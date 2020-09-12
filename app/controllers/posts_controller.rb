class PostsController < ApplicationController
  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      
      render json: @user.posts
    else
      @posts = Post.all

      render json: @posts
    end
  end

end
