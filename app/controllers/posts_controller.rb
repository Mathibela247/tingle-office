class PostsController < InheritedResources::Base
  def index
    @posts = Post.all
    #@posts = Post.find_by_sql("SELECT DISTINCT Post_titles.name Post_title, Supervisor.post_name Supervisor, Posts.post_name Post FROM Posts, Post_titles INNER JOIN Posts AS Supervisor")
  end


  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.update('new_post', partial: "posts/form", locals: { post: Post.new }),
            turbo_stream.prepend('posts', partial: "posts/post", locals: { post: @post })
          ]
          end

        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.turbo_stream do
          render turbo_stream:
            turbo_stream.update('new_post', partial: "posts/form", locals: { post: @post })
        end
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_units/1 or /organization_units/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def post_params
    params.require(:post).permit(:post_title_id, :post_name, :supervisor_id, :organization_type_id, :post_level)
  end

end
