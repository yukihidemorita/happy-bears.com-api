class Api::V1::Menu::CategoriesController < ApplicationController
  def index
    @categories = Category.select(:id, :name).all
  end
end
