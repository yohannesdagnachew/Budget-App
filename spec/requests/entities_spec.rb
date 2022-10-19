require 'rails_helper'

RSpec.describe 'Entities', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'Chris siku', password: '123456', email: 'chris@gmail.com')
    @group = Group.create(name: 'Category 1', user_id: 1)
    @entity = @group.entities.new(name: 'Entity 1', user_id: 1)
    sign_in @user
  end

  context 'GET /index : ' do
    it 'returns http success' do
      get groups_path
      expect(response).to have_http_status(:success)
    end
  end
end
