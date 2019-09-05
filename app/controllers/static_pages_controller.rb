class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:secret]
  after_create do
    UserMailer.welcome_email(self).deliver_now
  end  
 	def index
  	end
end
