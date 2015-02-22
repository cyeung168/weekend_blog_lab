class PostsController < ApplicationController
  def index #show all posts for a single author
    @author = Author.find params[:author_id]
    @posts = @author.posts
  end

  def show # show a single post for an author
    @post = Post.find params[:id]
    @author = @post.author
  end

  def new # create a new post for an author
    @author = Author.find params[:author_id]
    @post = Post.new
  end

  def edit # edit an exisiting post for an author
    @post = Post.find params[:id]
    @author = @post.author
  end

  def create # creating a new post for a specific/single author//redirect to posts of authors
    @author = Author.find params[:author_id]
    @post = Post.new post_params
    @post.author = @author # reversed because... we're associating the posts author to the author_id
    if @post.save
      redirect_to author_posts_path(@author)
    else
      render :new
    end

  end

  def update # updating an existing post for a specific/single author // redirect to the specific post_id show page
    @post = Post.find params[:id]
    @author = @post.author
    if @post.update_attributes post_params
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy # When you delete a post, it should redirect to... the page with other posts by same/singular author
    post = Post.find params[:id]
    post.destroy
    redirect_to author_posts_path(post.author)
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :category, :author_id)
    end
end
