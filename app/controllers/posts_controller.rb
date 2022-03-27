class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to create a new post."
      redirect_to root_path
    end
  end

end
