class BorrowsController < ApplicationController
  def index
    @borrows = Borrow.all
  end

  def show
    @borrow = Borrow.find(params[:id])
  end
end
