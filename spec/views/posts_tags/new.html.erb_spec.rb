require 'spec_helper'

describe "posts_tags/new" do
  before(:each) do
    assign(:posts_tag, stub_model(PostsTag).as_new_record)
  end

  it "renders new posts_tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_tags_path, :method => "post" do
    end
  end
end
