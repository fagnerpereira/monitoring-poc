class PostmarkApi
  def self.send_email(url)
    response = RestClient.post url,
    email_body.to_json,
    { :content_type => :json, :accept => :json, 'X-Postmark-Server-Token' => '94547162-5272-4d51-b879-0c4b4373fe59' }
    JSON.parse(response, symbolize_names: true)
  end

  private

  def self.email_body
    {
     from: "otto.horvath@clicksign.com",
     to: "6a65058728d23514b43119b999c7d764@inbound.postmarkapp.com",
     subject: "Postmark test",
     htmlBody: "<html><body><strong>Hello</strong> dear Postmark user.</body></html>"
    }
  end
end