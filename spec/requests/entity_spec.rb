require 'rails_helper'

RSpec.describe Entity, type: :request do
  let(:user) { User.create(name: 'User 1', email: 'a@gmail.com', password: '123456') }
  let(:valid_attributes) do
    {
      name: 'Group 1',
      amount: 1,
      user_id: user.id,
      group_id: 1

    }
  end
  describe 'GET /group' do
    it 'returns a successful response' do
      get group_entity_index_path(:group_id)
      expect(response).to have_http_status(302)
    end
  end
end
