class API::V1::UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    
    end

    def show
      redirect_to root_path
    end

    def edit
    end
  
    def update
      current_user.update(user_params)
      render "users/_profile_complete" if current_user.profile_complete?
    end
  
    private
  
      def user_params
        params.require(:user).permit(:name, :lastname, :initials, :title_id, :gender_id, :race_id, :dob, :disability, :persal_number, :identity_number, :office_number, :mobile_number, :city, :zip, :address, :organization_id, :avatar)
      end
end