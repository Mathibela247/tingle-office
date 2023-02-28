require "rails_helper"

RSpec.describe PostTitlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/post_titles").to route_to("post_titles#index")
    end

    it "routes to #new" do
      expect(get: "/post_titles/new").to route_to("post_titles#new")
    end

    it "routes to #show" do
      expect(get: "/post_titles/1").to route_to("post_titles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/post_titles/1/edit").to route_to("post_titles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/post_titles").to route_to("post_titles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/post_titles/1").to route_to("post_titles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/post_titles/1").to route_to("post_titles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/post_titles/1").to route_to("post_titles#destroy", id: "1")
    end
  end
end
