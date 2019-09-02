class JoinTableCartItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @joinTableCartItemsController = JoinTableCartItem.new(cart_id: 1, item_id: 2)
    puts"="*200
    puts params[:cart_id]
    puts params[:item_id]
    puts params[:id]
    puts params[:user_id]
    puts current_user.id
    puts"="*200
    if user_signed_in?
      if @joinTableCartItemsController.save
        redirect_to item_path(params[:item_id])
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
