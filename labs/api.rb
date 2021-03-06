require 'HTTParty'
require 'pp'

class CatFacts
  include HTTParty
  attr_accessor :facts

  base_uri 'http://www.catfact.info/api/v1'
  default_params output: :json

  def initialize(facts)
    @facts = facts
  end

  def random_fact
    @facts.sample["details"]
  end
  
  # Class Methods
  def self.fetch(page, per_page)
    response = get('/facts.json', query: { page: page, per_page: per_page })

    if response.success?
      puts "success"
      self.new(response["facts"])
    else
      puts "failure"
      raise response.response
    end
  end
end

new_facts = CatFacts.fetch(1, 10)

pp new_facts.facts

pp random_fact

# response = HTTParty.get('http://www.catfact.info/api/v1/facts.json')

# pp response.code, response.message, response.headers.inspect

# response.each_with_index do |res, index|
#   pp res
# end