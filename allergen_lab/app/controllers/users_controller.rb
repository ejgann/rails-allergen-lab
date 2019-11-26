class UsersController < ApplicationController

   def create
    @user = User.create(params[:id])
    @user.save
    redirect_to users_path
    end
    
    def new
        @user = User.new
    end 

    def show
        @user = User.find(params[:id])
    end

    private

    def define_user
 
    end

end
