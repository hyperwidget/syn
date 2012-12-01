require 'spec_helper'

describe "posts_tags/show" do
  before(:each) do
    @posts_tag = assign(:posts_tag, stub_model(PostsTag))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
