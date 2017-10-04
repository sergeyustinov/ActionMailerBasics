class MessageMailer < ApplicationMailer
  default from: "notifications@example.com"

  def new_message(message)
    @message = message
    
    mail(to: message.email, subject: message.subject)
  end
end
