class UserMailer < ApplicationMailer


  default from: 'no-reply@jungle.com'

  def order_confirmation_email(order)

    @order  = order

    mail(to: @order.email, subject: "Order number #{@order.id}")
  end

end
