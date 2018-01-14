class CallMailer < ApplicationMailer

  def notice_call_email
    @call = params[:order]
    mail(to: 'zhuravskyr@gmail.com', subject: 'CallNotice')
  end
end
