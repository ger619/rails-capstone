require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.new(name: 'Group 1', icon: 'spec/fixtures/icon.png', user_id: 1) }
  before { subject.save }
  after { Group.destroy_all }

  it 'is valid with valid attributes' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a name' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
