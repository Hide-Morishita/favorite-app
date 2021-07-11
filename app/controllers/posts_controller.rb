class PostsController < ApplicationController
  # ログインしている人だけが投稿を行えるように[authenticate_user!]を使用
  before_action :authenticate_user!, except: :index

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title).merge(user_id: current_user.id)
  end

end
