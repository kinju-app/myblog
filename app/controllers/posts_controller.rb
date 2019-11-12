class PostsController < ApplicationController
  before_action :require_user, except: [:index]  
  before_action :find_param, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create    
    @post = Post.new(post_params)
    if @post.save      
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit    
  end

  def update    
    @post.update(post_params)
    redirect_to posts_path
  end

  def destroy    
    @post.destroy
    redirect_to posts_path
  end


  private 

  def find_param
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :user_id)
  end
end
