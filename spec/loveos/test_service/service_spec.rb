require 'spec_helper'

describe LoveOS::TestService::Service do

  it_behaves_like "a loveos service"

  describe "GET /test" do
    let(:params){ {:required_param => 'param_value'} }
    def do_action
      get :test, params
    end

    it_behaves_like "a request with json response"
    it_behaves_like "a request with version header"

    context "with valid parameters" do
      it_behaves_like "a request with valid parameters"
    end

    context "with invalid parameters" do
      let(:params){ {} }
      it_behaves_like "a request with invalid parameters"
    end
  end

end