require 'rails_helper'

RSpec.describe Entity, type: :model do
  context 'valid attributes' do
    it 'is valid with valid attributes' do
      subject.name = 'Employee'
      expect(subject).to be_valid
    end
    it 'is not valid without a name' do
      subject.amount = 1
      expect(subject).to_not be_valid
    end
  end
end
