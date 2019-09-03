class ItemsController < ApplicationController
  before_action :set_item, only: [:new, :show, :create]
 
   def index
    @items = Item.all
    if user_signed_in?
      if current_user.id > Cart.last.id
        Cart.create(user_id: current_user.id)
        puts "Creation du panier pour le nouveau utilisateur"
      else
        puts "i"*60
      end
    end
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