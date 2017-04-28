class OrdersController < ApplicationController

  def new
    
  end

  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_i
    subtotal = quantity * product.price
    tax = quantity * product.tax
    total = subtotal + tax
    @order = Order.new(quantity: quantity, user_id: current_user.id, product_id: product.id, subtotal: subtotal, tax: tax, total: total) 

    if @order.save
      flash[:success] = "order Created"
      redirect_to "/orders/#{@order.id}"
    else 
      flash[:danger] = "Order not Created"
      redirect_to "/products/#{product.id}"
    end 
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def update
    @order = Order.find_by(id: params[:id])
    total_tax = 0 
    total_subtotal= 0

    @order.carted_products.each do |carted_product|
      total_tax += (carted_product.product.tax * carted_product.quantity)
      total_subtotal += (carted_product.product.price * carted_product.quantity)
    end
    
    total_total = total_tax + total_subtotal
    @order.assign_attributes(tax: total_tax, subtotal: total_subtotal, total: total_total, completed: true)
    if @order.save
    UsermailerMailer.sent_order(@order).deliver_now
    redirect_to "/orders/#{@order.id}"
    end 
  end
  
end
