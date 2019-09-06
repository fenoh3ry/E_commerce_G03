class ItemsController < ApplicationController

   def index
    @items = Item.all
    puts @items
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "Description ajouté! maintenant upload votre cat_pic"
      redirect_to new_item_pic_path(@item.id)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private
    def item_params
      params.require(:item).permit(
                  :title, 
                  :description,
                  :price)
    end
end