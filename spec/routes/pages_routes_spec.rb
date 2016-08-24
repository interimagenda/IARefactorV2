require 'rails_helper'

RSpec.describe PagesController, type: :routing do

  describe "routing" do

    it "routes to #landing" do
      expect(get: "/landing").to route_to("pages#landing")
      expect(get: "/").to route_to("pages#landing")
    end

    it "routes to #about" do
      expect(get: "/about").to route_to("pages#about")
    end

    it "routes to #contact" do
      expect(get: "/contact").to route_to("pages#contact")
    end

    it "routes to #blogs" do
      expect(get: "/blogs").to route_to("pages#blogs")
    end

    it "routes to #faq" do
      expect(get: "/faq").to route_to("pages#faq")
    end

    it "routes to #terms_and_conditions" do
      expect(get: "/terms_and_conditions").to route_to("pages#terms_and_conditions")
    end

    it "routes to #guide" do
      expect(get: "/guide").to route_to("pages#guide")
    end

    it "routes to #job_openings" do
      expect(get: "/job_openings").to route_to("pages#job_openings")
    end

  end

end
