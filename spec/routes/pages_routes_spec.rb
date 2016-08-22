require 'rails_helper'

RSpec.describe PagesController, type: :routing do

  describe "routing" do

    it "routes to #about" do
      expect(get: "/about").to route_to("pages#about")
    end

    it "routes to #contact" do
      expect(get: "/contact").to route_to("pages#contact")
    end

    it "routes to #blogs" do
      expect(get: "/blogs").to route_to("pages#blogs")
    end

    it "routes to #landing" do
      expect(get: "/landing").to route_to("pages#landing")
      expect(get: "/").to route_to("pages#landing")
    end

  end

end
