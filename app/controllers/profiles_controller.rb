class ProfilesController < ApplicationController
 def new
  @profile = Profile.new
 end

 def create
  Profile.create
  redirect_to root_path
 end

 private
  def profile_params
    # params.require(:profile).permit(:family_name :first_name :family_name_kana :first_name_kana :birth_year :birth_month :birth_day)
  end

end
