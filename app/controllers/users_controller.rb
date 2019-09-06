class UsersController < ApplicationController
	before_action :is_admin?, only: [:index]
	def show
		 @user = User.find(params[:id])
	end

	def index
		@order = Order.all
	end

	private
	def is_admin?
		if current_user.admin == true
			return true
		end
	end
end
