class Api::V1::ProductsController < ApplicationController

  def new
  end

  def index
    @products = Product.all
    # if params[:name] && params[:category]
      render json: @products
    # else
      # render json: {status: "error", code: 3000,
        # message: "Can't find products without name and category"}
    # end
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to @product
    else
      render json: {status: "error", code: 4000,
        message: "product params required to make a new product"}
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :category, :description, :price)
    end



end
