require 'rails_helper'

RSpec.describe "Dreams", type: :request do
  describe "GET /dreams" do
    it "works! (now write some real specs)" do
      get dreams_path
      expect(response).to have_http_status(200)
    end
  end
end
