class CreativesController < ApplicationController
  layout "creative"

  def index
    load_categories
  end




  def load_categories
    @categories = Category.all
  end
end
