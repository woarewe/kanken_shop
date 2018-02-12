class CallMailer < ApplicationMailer

  def notice_call_email
    @call = params[:order]
    mail(to: 'wanttobebel@mail.ru', subject: 'call')
  end
end
