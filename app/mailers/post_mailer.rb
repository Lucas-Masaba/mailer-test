class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.new_post_email.subject
  #
  def new_post_email
    @user = User
    @post = Post

    mail (
      to: @user.email,
      subject: "New post on #{post.title}"
      from: "bobbydawg@gmail.com"
    )
  end
end
