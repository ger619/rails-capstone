require 'rails_helper'

RSpec.feature 'group/new', type: :view do
  feature 'GET /group/new' do
    it 'renders a list of groups' do
      visit new_group_url
      expect(page).to have_http_status(200)
    end
  end
end
