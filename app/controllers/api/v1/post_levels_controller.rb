class API::V1::PostLevelsController < InheritedResources::API

  def index
    @post_levels = PostLevel.all

    render json: @post_levels
  end

  def show
    redirect_to root_path
  end

  private

    def post_level_params
      params.require(:post_level).permit(:level)
    end

end
