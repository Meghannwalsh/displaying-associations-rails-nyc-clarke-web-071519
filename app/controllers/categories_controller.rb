class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(parmam_things)
    redirect_to category_path(category)
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    category = Category.find(params[:id])
    category.update(parmam_things)
    redirect_to category_path(category)
  end

  private 

  def parmam_things
    params.require(:category).permit(:name)
  end 
end
