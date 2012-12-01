require 'spec_helper'

describe "posts_tags/index" do
  before(:each) do
    assign(:posts_tags, [
      stub_model(PostsTag),
      stub_model(PostsTag)
    ])
  end

  it "renders a list of posts_tags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
