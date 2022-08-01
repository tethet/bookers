class BooksController < ApplicationController
  def top
end
   def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @book = Book.new(book_params)
  
    
    # 4. トップ画面へリダイレクト
     if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
     else
      @books  = Book.all
      render :index
     end  
   end
    

  def index
    @books  = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
       @book = Book.find(params[:id])
  end
  
  def update
    flash[:notice] = "Book was successfully updated."
    @book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to book_path(@book.id)
    else
      
      render :edit
    end
    
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end  
  def book_params
    params.require(:book).permit(:title, :body)
  
  end
  
end
