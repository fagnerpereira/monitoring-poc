class HerokuApi
  def self.status(url)
    response = RestClient.get url
    JSON.parse(response, symbolize_names: true)
  end
end