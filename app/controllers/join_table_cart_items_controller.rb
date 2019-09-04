class JoinTableCartItemsController < ApplicationController
  before_action :set_cart, only: [:create]
  def index
  end

  def show
  end

  def new
  end

  def create
    @item = params[:item_id]
    @join_table_cart_items = @cart.join_table_cart_item.new(item: @item)

        if @join_table_cart_items.save
          redirect_to root_path, notice: 'Item a été créer avec succés'
        else
          puts "*"*100
          puts "tsy enregistré le (@join_table_cart_items = @cart.join_table_cart_item.new(item: @item))"
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
