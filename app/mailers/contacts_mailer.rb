class ContactsMailer < ActionMailer::Base
  def general_message(contact)
    @contact = contact

    mail(to: ENV["ADMIN_EMAIL"], subject: "Good Neighbors Club: New message!")
  end
end
