class CategoriesController < ApplicationController

  def show
    @category = Category.find_by(name: params[:genre])
  end

end
