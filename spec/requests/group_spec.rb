require 'rails_helper'

RSpec.describe Group, type: :request do
  let(:user) { User.create(name: 'User 1', email: 'a@gmail.com', password: '123456') }
  let(:valid_attributes) do
    {
      name: 'Group 1',
      icon: 'spec/fixtures/icon.png',
      user_id: user.id
    }
  end
  describe 'GET /group' do
    it 'returns a successful response' do
      get group_index_path
      expect(response).to have_http_status(302)
    end
  end
end
