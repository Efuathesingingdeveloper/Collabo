class ApplicationController < ActionController::Base
Include ApplicationHelper::SessionsHelper

    def home
    end

    private
    def authentication_required
        if !logged_in?
            redirect_to "/login"
        end 
    end 
end
