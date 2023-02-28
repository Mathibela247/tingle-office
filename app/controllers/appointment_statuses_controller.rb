class AppointmentStatusesController < InheritedResources::Base

  private

    def appointment_status_params
      params.require(:appointment_status).permit(:name)
    end

end
