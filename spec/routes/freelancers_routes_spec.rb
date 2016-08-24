require 'rails_helper'

RSpec.describe FreelancersController, type: :routing do

  describe "routing" do

    it "routes to #index" do
      expect(get: "/freelancers").to route_to("freelancers#index")
    end

    it "routes to #show" do
      expect(get: "freelancers/1").to route_to("freelancers#show", id: "1")
    end
  end
end
