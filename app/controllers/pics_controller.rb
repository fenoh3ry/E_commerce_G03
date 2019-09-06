class PicsController < ApplicationController
  def new
  end

  def create
    @item = Item.find(params[:item_id])
    @item.pic.attach(params[:pic])
    redirect_to item_path(@item.id)
  end

  def index
  end

  def show
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
