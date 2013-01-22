require "loveos-sinatra_base"

module LoveOS
  module TestService
    class Service < LoveOS::Sinatra::Base
  
      before "*" do
        content_type :json
        response.headers['X-LoveOS-Version'] = '0.1'
      end

      get "/ping" do
        'ok'
      end

      get "/test" do
        response = {}
        if params['required_param'].nil?
          response.merge!(:error_message => 'required param missing',
                          :error_code => 400)
          status 400
        end
        response.to_json
      end

    end
  end
end