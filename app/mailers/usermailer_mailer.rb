class UsermailerMailer < ApplicationMailer
  default from: 'muganezajoseph@gmail.com'

  def sent_order(order)
    @order = order

    mail(to: @order.user.email, subject: 'Thank you for buying with us, Below is your order')
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password Reset"
  end
end
