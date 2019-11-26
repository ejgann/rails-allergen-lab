class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end 

    def new
        @recipe = Recipe.new
    end 

    def show
        define_recipe 
    end 

    def create
        @recipe = Recipe.create(my_params(:name,:user))
        @recipe.save
        redirect_to recipe_path(@recipe)
    end

    private

    def define_recipe
        @recipe = Recipe.find(params[:id])
    end

    def my_params(*args)
        params.require(:recipe).permit(*args)
    end

end
