class PagesController < ApplicationController

  def index
    @online_users = User.online
  end
end
