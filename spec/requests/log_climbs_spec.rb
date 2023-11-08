require 'rails_helper'

RSpec.describe "LogClimbs", type: :request do
  describe "GET /log_climbs" do
    it "works! (now write some real specs)" do
      get log_climbs_path
      expect(response).to have_http_status(200)
    end
  end
end
