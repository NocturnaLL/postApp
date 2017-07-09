class PostsController < ApplicationController
before_action :set_post, only: [:show, :update, :edit, :destroy]

  def new
    @post = Post.new
    load_categories
  end

  def index
    @posts = Post.all
  end

  def show
    @comment = @post.comments.new
  end

  def create
    @post = Post.new(post_params)

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
    redirect_to posts_path
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
