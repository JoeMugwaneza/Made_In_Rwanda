class UsermailerMailer < ApplicationMailer
  default from: 'muganezajoseph@gmail.com'

  def sent_order(order)
    @order = order

    mail(to: @order.user.email, subject: 'Thank you for buying with us, Below is your order')
  end
end
