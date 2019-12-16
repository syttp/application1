class BooksController < ApplicationController

  def top
  end

  def index
  	@books = Book.all
  	@book = Book.new
  end

  def show
  	@show = Book.find(params[:id])
  end

  def new
  	@book = Book.new
  end

  def create
  	@books = Book.all
  	@book = Book.new(book_params)
  	if @book.save
  	redirect_to book_path(@book.id),notice:'Book was successfully created.'
  else
  	render :index
  end
  end

   def edit
   	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	book.update(book_params)
  	redirect_to book_path(book.id)
  	flash[:edit] = 'Book was successfully updated.'
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to books_path
  	flash[:destroy] = 'Book was successfully destroyed.'
  end

  private

  def book_params
  	params.require(:book).permit(:title,:body)
  end
end
