class API::V1::OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all

    render json: @organizations
  end
  
  private

    def organization_params
      params.require(:organization).permit(:name, :organization_type_id, :contact_person, :physical_address, :city, :province, :telephone)
    end
end