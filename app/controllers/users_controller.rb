class UsersController < ApplicationController
  def my_bookmarks
    @boroughs = current_user.boroughs
  end
  def delete_bookmark
    Bookmark.find(params[:id]).destroy
    redirect_to request.referer
  end
end
