class CreaturesController < ApplicationController

	def index
		@creatures = Creature.all
	end

	def new
		@creature = Creature.new
	end

	def create
		creature = Creature.new(creature_params)

		if creature.save
			redirect_to creature_path(creature)
		end
	end

	def show
		@creature = Creature.find(params[:id])
	end

	def edit
		@creature = Creature.find(params[:id])
	end

	def update
		creature = Creature.find(params[:id])

		creature.update_attributes(creature_params)

		if creature.save
			redirect_to creature_path(creature)
		end
	end

	private

	def creature_params
		params.require(:creature).permit(:name, :description)
	end

end
