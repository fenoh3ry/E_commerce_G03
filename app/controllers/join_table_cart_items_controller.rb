class JoinTableCartItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    if user_signed_in?
      if current_user.cart == nil
        Cart.create(user_id: current_user.id)
        puts "Creation du panier pour le nouveau utilisateur"
      end
      @joinTableCartItemsController = JoinTableCartItem.new(cart_id: current_user.cart.id , item_id: rand(1..10))
      if @joinTableCartItemsController.save
        redirect_to items_path
      else
        puts "x"*100
        puts 'tsy enregistré'
      end
    else
      redirect_to new_user_registration_path
    end
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private


end
