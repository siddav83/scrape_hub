class PagesController < ApplicationController
  def home
    @borough = Borough.new
  end
end
