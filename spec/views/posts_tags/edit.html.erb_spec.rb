require 'spec_helper'

describe "posts_tags/edit" do
  before(:each) do
    @posts_tag = assign(:posts_tag, stub_model(PostsTag))
  end

  it "renders the edit posts_tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_tags_path(@posts_tag), :method => "post" do
    end
  end
end
