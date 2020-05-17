

module SMS
    require "httparty"
  
    def self.send(recipient, message)
      @result = HTTParty.post("https://auth.routee.net/oauth/token", {
        body: {"grant_type" => "client_credentials"},
        headers: {
          "Content-Type" => "application/x-www-form-urlencoded",
          "Authorization" => "Basic NWNjOTFhY2VlNGIwOGYwOGJhN2FlNGI4OmpmTTQxRmxzdXQ=",
        },
      })
      if @result
        @send = HTTParty.post("https://connect.routee.net/sms", {
          body: {"body" => "#{message}", "from" => 'Deliverypost', 'to' => "+#{recipient}"}.to_json,
          headers: {
            "Content-Type" => "application/json",
            "Authorization" => "Bearer #{@result['access_token']}",
          },
        })
        return @send
      end
    end

  end
  