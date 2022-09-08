require 'rails_helper'

RSpec.feature 'group/index', type: :view do
  feature 'GET /group' do
    it 'returns a successful response' do
      visit group_index_path
      expect(page).to have_http_status(200)
    end
  end
end
