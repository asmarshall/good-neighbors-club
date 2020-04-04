class PostMailer < ApplicationMailer
  def new_post_email
    @post = params[:post]

    mail(to: ENV["ADMIN_EMAIL"], subject: "Good Neighbors Club: New post request!")
  end
end
