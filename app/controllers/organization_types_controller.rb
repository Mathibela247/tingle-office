class OrganizationTypesController < InheritedResources::Base

  def index
    @organization_type = OrganizationType.all

    render json: @organization_type.includes(:organization)
  end
  private

    def organization_type_params
      params.require(:organization_type).permit(:name)
    end

end
