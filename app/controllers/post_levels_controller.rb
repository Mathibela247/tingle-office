class PostLevelsController < InheritedResources::Base

  private

    def post_level_params
      params.require(:post_level).permit(:level)
    end

end
