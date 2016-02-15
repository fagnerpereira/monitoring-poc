class Heroku < Validator
  def validates
    response = HerokuApi.status(url)
  end
end