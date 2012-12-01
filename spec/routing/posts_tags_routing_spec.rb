require "spec_helper"

describe PostsTagsController do
  describe "routing" do

    it "routes to #index" do
      get("/posts_tags").should route_to("posts_tags#index")
    end

    it "routes to #new" do
      get("/posts_tags/new").should route_to("posts_tags#new")
    end

    it "routes to #show" do
      get("/posts_tags/1").should route_to("posts_tags#show", :id => "1")
    end

    it "routes to #edit" do
      get("/posts_tags/1/edit").should route_to("posts_tags#edit", :id => "1")
    end

    it "routes to #create" do
      post("/posts_tags").should route_to("posts_tags#create")
    end

    it "routes to #update" do
      put("/posts_tags/1").should route_to("posts_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/posts_tags/1").should route_to("posts_tags#destroy", :id => "1")
    end

  end
end
