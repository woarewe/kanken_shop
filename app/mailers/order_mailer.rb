class OrderMailer < ApplicationMailer

  def notice_order_email
    @order = params[:order]
    mail(to: 'wanttobebel@mail.ru', subject: 'order')
  end
end
