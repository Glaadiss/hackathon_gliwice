class NotifierMailer < ApplicationMailer
  default from: 'no-reply@example.com',
          return_path: 'system@example.com'

  def welcome(recipient, notification)
    @notification = notification
    @recipient = recipient
    mail(to: recipient,
         subject: "[Signed up] Welcome #{recipient}")
  end
end
