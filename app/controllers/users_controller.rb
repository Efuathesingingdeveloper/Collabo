class UsersController < ApplicationController
    def new
        if session[:current_user_id]
            redirect_to "/"
        end
    end 

    def create
        @user = User.new
        @user.email = params[:email]
        @user.password = params[:password]
        if @user.save
            redirect_to "/login"
        else
            render :new, :error =>"please include a password"
        end
    end 
end
