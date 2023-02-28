class API::V1::PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
    #@posts = Post.find_by_sql("SELECT DISTINCT Post_titles.name Post_title, Supervisor.post_name Supervisor, Posts.post_name Post FROM Posts, Post_titles INNER JOIN Posts AS Supervisor")
  end


  private

  def post_params
    params.require(:post).permit(:post_title_id, :post_name, :supervisor_id, :organization_type_id, :post_level_id)
  end

end
