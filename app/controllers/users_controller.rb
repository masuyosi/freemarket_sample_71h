class UsersController < ApplicationController
  def new
    @user = User.new

    @user.build_profile
    @users = User.all
  end

  # def create
  #   binding.pry
  #   @user = User.new(user_params)
  #   @user.save
  #   @user.build_profile
  #   @user.build_address
  #   redirect_to root_path
  #   else
  #   render action: :new

  # end

  private

  def user_params
    params.require(:user).permit(:nickname, addresses_attributes:[:id, :postal_code, :prefecture, :municipality, :address_number])
    # params.require(:profile).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :birth_year, :birth_month, :birth_day)
    # params.require(:profile).permit(:prefecture, :city, :house_number, :post_cord)
  end

end
