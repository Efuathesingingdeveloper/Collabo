class CollabosController < ApplicationController
    before_action :authentication_required
    def new
    end 

    def index
       @collabo = Collabo.by_status(:open)
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

    def show 
        @collabo = Collabo.find(params[:id])
    end 

    def update
        @collabo = Collabo.find(params[:id])
        if @collabo.accepted_by(current_user)
        redirect_to @collabo
        else
          render :show  
        end
    end
    private
    # params.require(:user).permit(:name, :email)
end
