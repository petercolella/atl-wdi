class Pokemon < ApplicationRecord
	include HTTParty
  	base_uri 'http://pokeapi.co/api/v2/pokemon'

  	def self.generate(api_id)
    	pokemon = find_by api_id: api_id
    	return pokemon unless pokemon.nil?

    	response = get "/#{api_id}"
    	placeholder_image = "https://www.placecage.com/c/#{200 + api_id}/#{200 + api_id}"

	    create!(name: response['name'],
	            image: placeholder_image,
	            wins: 0, 
	            api_id: api_id)
	end
end
