class MerchantService
  def merchants
    response = conn.get("/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://localhost:3000")
    # if it needed an API key would add
    # do |faraday| faraday.headers[api_key_syntax] = Rails.application.credentials.cred_name[:key] end
  end
end