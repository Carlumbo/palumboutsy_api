class Api::V1::ProductsController < ApplicationController
  before_action  only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
      product =  Product.create!( 
          title: params['product']['title'],
          image: params['product']['image'],
          price: params['product']['price'],
          rating: params['product']['rating'],
  
          )
    @products = Product.all
    render json: @products
    #@product = Product.new(product_params)
   
    #if @product.create
    #  render json: @product, status: :created, location: @product
    #else
    #  render json: @product.errors, status: :unprocessable_entity
    #end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product = Product.find(params[:id])
    render json: @product
    @product.destroy
   
  end
  

    
 

  def 
  private
    # Use callbacks to share common setup or constraints between actions.
  

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:title)
    end
end
end
