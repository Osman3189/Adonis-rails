class PagesController < ApplicationController
  def map
    @users = User.select(:name, :latitude, :longitude)
  end
end
