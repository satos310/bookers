class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "successfully"
      redirect_to books_path(@book.id)
    else
      @books = Book.all
      # viewをindexに戻す
      render :index
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @books = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_top book_path(book.id)
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
