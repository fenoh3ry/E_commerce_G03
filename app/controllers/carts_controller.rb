class CartsController < ApplicationController
    before_action :set_cart, only: [:new, :create]
 
  def index
    @carts = Cart.all
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

    def set_cart
    @cart = Cart.find(params[:cart_id])
    end
end
