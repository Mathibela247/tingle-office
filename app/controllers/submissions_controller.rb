class SubmissionsController < InheritedResources::Base
  before_action :set_submission, only: [:show, :edit, :update, :destroy]
    def index
      @submissions = current_user.submissions.ordered
    end

    def create
      @submission = current_user.submissions.build(submission_params)
    
      if @submission.save
        respond_to do |format|
          format.html { redirect_to submissions_path, notice: "Submission was successfully created." }
          format.turbo_stream
        end
      else
        render :new, status: :unprocessable_entity
      end
    end

  private
  
    def set_submission
      @submission = current_user.submissions.find(params[:id])
    end

    def submission_params
      params.require(:submission).permit(:title, :purpose, :background, :discussion, :communication, :legal, :human_resource, :financial, :recommendation, :isactive, :user_id, :appointment_id, docs: [])
    end

end
