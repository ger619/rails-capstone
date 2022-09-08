require 'rails_helper'

RSpec.feature 'Entity Page' do
  feature 'GET /group/:group_id/entity' do
    it 'returns a successful response' do
      visit group_entity_index_path(:group_id)
      expect(page).to have_http_status(200)
    end
    it 'returns a successful response' do
      visit new_group_entity_path(:group_id)
      expect(page).to have_http_status(200)
    end
  end
end
