class BooksController < ApplicationController
def new
  @book = Book.new

end
# 投稿データの保存
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end
  
  def index
    @books = Book.all
  end

  def show
  end

  def destroy
  end
  # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:book).permit(:shop_name, :image, :caption)
  end
end
