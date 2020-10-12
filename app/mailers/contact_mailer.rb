class ContactMailer < ApplicationMailer
  default from: 'hugocardososilva@gmail.com'
  def catch_contact
    @contact = params[:contact]
    #get all user subscribed for send email
    @emails = User.all.collect(&:email).join(',')
    mail to: @emails, subject: t('mailer.subject')
  end
end
