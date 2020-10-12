class Contact < ApplicationRecord
  after_create :send_mail

  def to_s
    "#{name} - #{email}"
  end
  private

  def send_mail
    ContactMailer.with(contact: self).catch_contact.deliver_later
  end
end
