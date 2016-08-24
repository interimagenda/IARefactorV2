require 'rails_helper'

RSpec.describe SocializationsController, type: :routing do

  describe "routing" do

    it "routes to #follow" do
      expect(post: "users/1/follow").to route_to("socializations#follow", user_id: "1")
    end

    it "routes to #follow" do
      expect(post: "users/1/unfollow").to route_to("socializations#unfollow", user_id: "1")
    end

    it "routes to #like" do
      expect(post: "jobs/1/like").to route_to("socializations#like", job_id: "1")
    end

    it "routes to #unlike" do
      expect(post: "jobs/1/unlike").to route_to("socializations#unlike", job_id: "1")
    end
  end
end


# resources :users do
#   post 'follow',   to: 'socializations#follow'
#   post 'unfollow', to: 'socializations#unfollow'
# end
#
# resources :jobs do
#   post 'like',   to: 'socializations#like'
#   post 'unlike', to: 'socializations#unlike'
# end
