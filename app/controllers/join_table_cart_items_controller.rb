class JoinTableCartItemsController < ApplicationController
  before_action :set_cart, only: [:create]
  def index
  end

  def show
  end

  def new
  end

  def create
    item = Item.find(params[:item_id])
    @join_table_cart_items = @cart.join_table_cart_item.new(item: item)

    respond_to do |format|
      if @join_table_cart_items.save
        format.html {redirect_to @join_table_cart_items.cart, notice: 'Item a été créer avec succés'}
        format.json { render :show, status: :created, location: @join_table_cart_items}
      end
      end
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private

  def set_cart
    @cart = Cart.find_by(id: session[:cart_id]) || Cart.create
      session[:cart_id] ||= @cart.id
  end

end
