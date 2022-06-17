class OrganizationTypesController < InheritedResources::Base

  private

    def organization_type_params
      params.require(:organization_type).permit(:name)
    end

end
