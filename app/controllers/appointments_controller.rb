class AppointmentsController < InheritedResources::Base

  private

    def appointment_params
      params.require(:appointment).permit(:post_id, :user_id, :start_date, :end_date, :appointment_status_id, :isactive)
    end

end
