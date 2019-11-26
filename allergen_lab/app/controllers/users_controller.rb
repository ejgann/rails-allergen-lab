class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    private

    def define_user
 
    end

end
