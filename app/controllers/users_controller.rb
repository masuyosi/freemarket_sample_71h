class UsersController < ApplicationController
  def new
    @users = User.new
    
  end
end
