class UsersController < ApplicationController
  def my_bookmarks
    @boroughs = current_user.boroughs
  end
end
