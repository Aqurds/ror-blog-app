class PostsController < ApplicationController
  before_action :set_user, only: %i[show]

  # # GET /posts or /posts.json
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  # # GET /posts/1 or /posts/1.json
  def show
    @post = Post.find(params[:id])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:author_id, :title, :text, :comments_counter, :likes_counter)
    # params.require(:user)
  end
end
