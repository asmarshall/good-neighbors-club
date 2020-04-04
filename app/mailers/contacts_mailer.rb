class ContactsMailer < ActionMailer::Base
  default from: "admin@example.com"

  def general_message(contact)
    @contact = contact
    mail( :to => ENV["ADMIN_EMAIL"], :subject => "Good Neighbors Club: New Message!")
  end
end
