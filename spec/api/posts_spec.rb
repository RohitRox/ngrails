require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Posts" do

  let(:post){ create(:post) }

  get "/api/posts" do
    example "Listing posts" do
      do_request
      status.should == 200
    end
  end
end