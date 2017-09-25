class CartedProductsController < ApplicationController

  def index
    if current_user
      @carted_products = CartedProduct.all
      @order = current_user.orders.find_by(completed:false)
      unless @order
        flash[:warning] = "Your Shopping Cart is Empty"
        redirect_to "/"
      end
    else
      flash[:warning] = "Login before shopping"
      redirect_to "/login"
    end
  end

  def show
    carted_product = CartedProduct.find_by(id: params[:id])
  end

  def create
    if current_user
      order = current_user.orders.find_by(completed:false) || Order.create(user_id: current_user.id, completed: false)
      carted_product = CartedProduct.new(order_id: order.id, product_id: params[:product_id], quantity: params[:quantity])


      carted_product.save
      flash[:success] = "Product added in your cart"
      redirect_to "/carted_products"
    else
      flash[:warning] = "Sign in to start making order!"
      redirect_to "/users/sign_in"
    end

  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.destroy

    flash[:warning] = "Product removed from your Shopping Cart"

    redirect_to "/carted_products"
  end
end
