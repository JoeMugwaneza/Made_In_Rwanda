class CartedProductsController < ApplicationController

  def index
    @order = current_user.orders.find_by(completed:false)
    unless @order
      flash[:warning] = "Your Shopping is Empty"
      redirect_to "/"
    end
  end

  def create
    if current_user
      order = current_user.orders.find_by(completed:false) || Order.create(user_id: current_user.id, completed: false)
      carted_product = CartedProduct.new(order_id: order.id, product_id: params[:product_id], quantity: params[:quantity])

      carted_product.save
      redirect_to "/carted_products"
    else
      flash[:warning] = "Sign up to start making order!"
      redirect_to "/signup"
    end

  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.destroy

    flash[:warning] = "Product removed from your Shopping Cart"

    redirect_to "/carted_products"
  end
end
