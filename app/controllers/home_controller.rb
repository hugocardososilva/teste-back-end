class HomeController < ApplicationController
  layout 'sample_site'
  def index
    render 'index'
  end

  def about
    render 'about'
  end
end
