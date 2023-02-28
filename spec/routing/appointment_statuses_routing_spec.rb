require "rails_helper"

RSpec.describe AppointmentStatusesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/appointment_statuses").to route_to("appointment_statuses#index")
    end

    it "routes to #new" do
      expect(get: "/appointment_statuses/new").to route_to("appointment_statuses#new")
    end

    it "routes to #show" do
      expect(get: "/appointment_statuses/1").to route_to("appointment_statuses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/appointment_statuses/1/edit").to route_to("appointment_statuses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/appointment_statuses").to route_to("appointment_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/appointment_statuses/1").to route_to("appointment_statuses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/appointment_statuses/1").to route_to("appointment_statuses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/appointment_statuses/1").to route_to("appointment_statuses#destroy", id: "1")
    end
  end
end
