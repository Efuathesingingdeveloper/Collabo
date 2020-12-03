class CollabosController < ApplicationController
    before_action :authentication_required
    def new
    end 

    def index
       @collabo = Collabo.all
    end

    def create 
        @collabo = Collabo.new
        @collabo.kind = params["kind"]
        @collabo.requestor_user_id = current_user.id
        if @collabo.save 
            redirect_to "/collabos"
        else 

        end 
    end 
end
