require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      subject.name = 'Group 1'
      expect(subject).to_not be_valid
    end
    # it 'is not valid without a name' do
    #   subject.icon = image_tag(icon)
    #  expect(subject).to_not be_valid
    # end
  end
end
