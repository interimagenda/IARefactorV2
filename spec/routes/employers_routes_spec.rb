require 'rails_helper'

RSpec.describe EmployersController, type: :routing do

  describe "routing" do

    it "routes to #index" do
      expect(get: "/employers").to route_to("employers#index")
    end

    it "routes to #show" do
      expect(get: "employers/1").to route_to("employers#show", id: "1")
    end
  end
end
