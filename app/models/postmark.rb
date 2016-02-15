class Postmark < Validator
  def validates
    PostmarkApi.send_email(url)
  end
end