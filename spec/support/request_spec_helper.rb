module RequestSpecHelper
  def json_response_body
    JSON.parse(response.body)
  end
end
