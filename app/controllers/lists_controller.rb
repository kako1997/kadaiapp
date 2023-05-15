class ListsController < ApplicationController
  def new
    @books = Book.new 
  end

  def index
  end
  
  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    list = Book.new(list_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # 4. トップ画面へリダイレクト
    redirect_to '/top'
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def book_params
    params.require(:list).permit(:title, :body)
  end
end
