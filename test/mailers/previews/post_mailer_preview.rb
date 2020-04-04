# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview
  def new_post_email
    # Set up a temporary post for the preview
    post = Post.new(
      first_name: "Krystal",
      last_name: "Krumb",
      email: "krystalk@gmail.com",
      title: "Krystal's Kloset",
      body: "A few sentences about their business, their current status during COVID-19, and how they need us to help. Five lines maximum should be good. And here is the fifth line of text.",
      category: "boutique",
      url: "www.krystals-kloset.com"
    )

    PostMailer.with(post: post).new_post_email
  end
end
