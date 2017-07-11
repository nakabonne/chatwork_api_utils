require "chatwork_api_utils/version"
require 'net/https'
require 'json'

module ChatworkApiUtils
  def self.notify(room_id ,message, api_token)
    uri = URI.parse('https://api.chatwork.com')
    client = Net::HTTP.new(uri.host, 443)
    client.use_ssl = true
    response = client.post("/v2/rooms/#{room_id}/messages", "body=#{message}", {'X-ChatWorkToken' => api_token})
  end
end
