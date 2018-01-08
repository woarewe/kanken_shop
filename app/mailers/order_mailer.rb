class OrderMailer < ApplicationMailer

  def notice_order_email
    @order = params[:order]
    mail(to: 'zhuravskyr@gmail.com', subject: 'OrderNotice')
  end
end
