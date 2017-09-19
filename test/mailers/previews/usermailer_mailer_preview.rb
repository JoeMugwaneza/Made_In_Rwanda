# Preview all emails at http://localhost:3000/rails/mailers/usermailer_mailer
class UsermailerMailerPreview < ActionMailer::Preview
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UsermailerMailer.password_reset(user)
  end
end
