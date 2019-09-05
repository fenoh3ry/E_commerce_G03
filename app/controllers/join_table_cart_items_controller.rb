class JoinTableCartItemsController < ApplicationController
  before_action :set_cart, only: [:create]
  def index
  end

  def show
  end

  def new
  end

  def create
    @item = Item.find(params[:item_id])
    @join_table_cart_items = JoinTableCartItem.new(item: @item, cart: @cart)
      if @join_table_cart_items.save
        redirect_to root_path, notice: 'Item a été créer avec succés'
      end
  end

  def update
  end

  def destroy
    JoinTableCartItem.find(params[:id]).destroy
    redirect_to cart_path(current_user.id)
  end

  def edit
  end

  private

  def set_cart
    @cart = Cart.find_by(id: current_user.id)
  end

end