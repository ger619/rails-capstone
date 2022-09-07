require 'rails_helper'

RSpec.describe Entity, type: :model do
  subject { Entity.new(name: 'Entity 1', amount: 2) }
  before { subject.save }
  after { Entity.destroy_all }

  it 'is valid with valid attributes' do
    subject.name = 'Entity 1'
    expect(subject).to_not be_valid
  end
  it 'is not valid without a name' do
    subject.amount = 2
    expect(subject).to_not be_valid
  end
end
