class BooksController < ApplicationController
  def new
    @books = Book.new
  end
  
  def create
    book = Book.new(list_params)
    book.save
    redirect_to '/top'
  end

  def index
    @books = Book.all
  end

  def show
    @books = Book.find(params[:id])
  end

  def edit
  end
  
  def destroy
    book = book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
