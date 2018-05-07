class BorrowsController < ApplicationController
  def index
    @borrows = Borrow.all
  end

  def show
    @borrow = Borrow.find(params[:id])
  end

  def new
    @borrow = Borrow.new
  end

  def create
    @borrow = Borrow.new(borrow_params)
    if @borrow.save
      flash[:notice] = 'Borrow added successfully.'
      redirect_to(borrow_path)
    else
      render('new')
    end
  end

  def edit
    @borrow = Borrow.find(params[:id])
  end

  def update
    @borrow = Borrow.find(params[:id])
    if @borrow.update_attributes(borrow_params)
      flash[:notice] = 'Borrow updated successfully.'
      redirect_to(borrow_path(@borrow))
    else
      render('edit')
    end
  end

  def delete
    @borrow = Borrow.find(params[:id])
  end

  def destroy
    @borrow = Borrow.find(params[:id])
    @borrow.destroy
    flash[:notice] = 'Borrow removed successfully.'
    redirect_to(borrow_path)
  end

  private

  def borrow_params
    params.require(:borrow).permit(:borrow_id, :user_id)
  end
end
