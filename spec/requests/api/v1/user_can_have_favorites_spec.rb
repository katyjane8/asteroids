require 'rails_helper'

RSpec.describe "As a registered user when I send a get to 'api/v1/user/favorites?api_key=abc123'" do
  before :each do
    @user = create(:user)
    @api_key = create(:api_key)
  end

  it "will receive a JSON response as follows:" do
    get "/api/v1/user/favorites?#{@api_key.value}"

    expect(response).to be_success
    hits = JSON.parse(response.body)

    expect(hits).to be_a Hash
  end
end
