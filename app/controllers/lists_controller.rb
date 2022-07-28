class ListsController < ApplicationController
  def new
    
  end
  
  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @list = List.new(list_params)
  
    
    # 4. トップ画面へリダイレクト
     if index.save
      redirect_to books_path(list.id)
     else
      render :index
     end  
  end
    

  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
       @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to books_path(list.id)
    
  end
  
  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to '/books'
  end  
  def list_params
    params.require(:list).permit(:title, :body)
  
  end
 
end