class UsersController < ApplicationController
    def new
        if session[:current_user_id]
            redirect_to "/"
        end
    end 

    def create
        @user = User.new
        @user.email = params[:email]
        @user.save

        redirect_to "/login"
    end 
end
