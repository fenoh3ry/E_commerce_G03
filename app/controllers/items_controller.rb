class ItemsController < ApplicationController
  before_action :set_item, only: [:new, :show, :create]
 
  def index
    @items = Item.all
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private

    def set_item
    @item = Item.find(params[:id])
    end
end