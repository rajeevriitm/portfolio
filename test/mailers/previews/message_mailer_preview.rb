# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/send_message
  def send_message
    params={name: "name",email: "fwf@gg",message: "fsf",subject: "dsfd"}
    MessageMailer.send_message(params)
  end

end
