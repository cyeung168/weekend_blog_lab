class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find params[:id]
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find params[:id]
  end

  def create # POST
    @author = Author.new author_params
    if @author.save
      redirect_to authors_path(@author)
    else
      render :new #If no save, then render new form again with error.
    end
  end

  def update # PUT
    @author = Author.find params[:id]
    if @author.update_attributes author_params
      redirect_to author_path(@author)
    else 
      render :edit
    end
  end

  def destroy # DELETE
    author = Author.find params[:id]
    author.destroy
    redirect_to authors_path
  end

  private # Private means only the controller can call on this
    def author_params
      params.require(:author).permit(:first_name, :last_name, :age)
    end

end