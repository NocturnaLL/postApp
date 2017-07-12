class PostsController < ApplicationController
before_action :authenticate_user!, except: [:show, :index]
before_action :set_post, only: [:show, :update, :edit, :destroy]
before_action :authorize_user!, only: [:edit, :update, :destroy]
  def new
    @post = Post.new
    load_categories
  end

  def index
    @posts = Post.order('created_at DESC').page(params[:page]).per(10)
  end

  def show

  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to post_path(@post)

    else
      load_categories
      render :new
    end
  end

  def edit
    load_categories
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      load_categories
      render :edit
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Post deleted."
    redirect_to posts_path
  end

  def authorize_user!
    redirect_to root_path, notice: "Not authorized" unless @post.user_id == current_user.id
  end

  def load_categories
    @categories = Category.all.collect {|c| [c.title, c.id ] }
  end


  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :text, :category_id)
  end
end
