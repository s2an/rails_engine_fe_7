class ApplicationController < ActionController::Base
  def faraday_api_call
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    # do NOT symbolize names when parsing if bypassing postman!!
    data = JSON.parse(response.body)
    file_path = Rails.root.join("spec", "fixtures", "merchants_index.json")
  
    File.open(file_path, 'a') do |file|
      file.write(JSON.pretty_generate(data))
    end
  end
end
