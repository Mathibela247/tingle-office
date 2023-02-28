require "rails_helper"

RSpec.describe PostLevelsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/post_levels").to route_to("post_levels#index")
    end

    it "routes to #new" do
      expect(get: "/post_levels/new").to route_to("post_levels#new")
    end

    it "routes to #show" do
      expect(get: "/post_levels/1").to route_to("post_levels#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/post_levels/1/edit").to route_to("post_levels#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/post_levels").to route_to("post_levels#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/post_levels/1").to route_to("post_levels#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/post_levels/1").to route_to("post_levels#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/post_levels/1").to route_to("post_levels#destroy", id: "1")
    end
  end
end
