class PostTitlesController < InheritedResources::Base

  private

    def post_title_params
      params.require(:post_title).permit(:name)
    end

end
