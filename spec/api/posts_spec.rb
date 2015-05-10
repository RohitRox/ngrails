require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Posts" do

  get "/api/posts" do
    example "Get all posts" do
      do_request
      status.should == 200
    end
  end

  get "/api/posts/:id" do
    parameter :id, "Post ID"

    let(:a_post){ create(:post) }
    let(:id){ a_post.id }

    example "Get a post" do
      do_request
      status.should == 200
    end
  end

end