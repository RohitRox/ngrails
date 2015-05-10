require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Problems" do

  get "/api/problems" do
    example "Get all problems" do
      do_request
      status.should == 200
    end
  end

  get "/api/problems/:id" do
    parameter :id, "Problem ID"

    let(:problem){ create(:problem) }
    let(:id){ problem.id }

    example "Get a problem" do
      do_request
      status.should == 200
    end
  end

end