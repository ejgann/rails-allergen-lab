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
        @recipe = Recipe.create(params[:id])
        @recipe.save
        redirect_to recipes_path
    end


    private

    def define_recipe
        @recipe = Recipe.find(params[:id])
    end

    def my_params(*args)
        params.require(:recipe).permit(*args)
    end

end
