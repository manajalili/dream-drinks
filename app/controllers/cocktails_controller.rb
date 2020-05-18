class CocktailsController < ApplicationController
# before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
  # def set_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end
end
