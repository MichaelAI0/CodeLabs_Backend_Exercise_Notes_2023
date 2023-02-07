class PostsContoller < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def Index
    @posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end

  def new 
    @post = Post.new(post_params)
  end

  if @post.save
    redirect_to @post, notice: "Post was successfully created."
  else
    render :new
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end