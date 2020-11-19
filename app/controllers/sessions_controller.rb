class SessionsController < ApplicationController

    def new
    end 

    def create
       @user = User.find_by(:email => params[:email]) 
       if @user
          session[:current_user_id] = @user.id
          redirect '/'
       else redirect_to "login", :notice => "Cannot find that email"
       end 
    end
end
