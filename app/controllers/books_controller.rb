class BooksController < ApplicationController

  def index
    if params[:search]
      @books = Book.search(params[:search])
    else
      @books = Book.all
    end
      @author = Book.all.authors
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.build(book_params)

    if @book.save
      redirect_to @book
    else 
      render :new
    end
  end

  def show
    @book = Book.find_by(id: params[:id])

    unless @book
      redirect_to root_path
    end
  end

  def edit
    @book = Book.find_by(id: params[:id])

    unless @book
      redirect_to root_path
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(book_params)
    redirect_to root_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path
  end

  private
  
  def book_params
    params.require(:book).permit(:title, :genre, :classification)
  end
end
