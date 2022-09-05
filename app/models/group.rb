class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  belongs_to :user, class_name: 'User', optional: true
  belongs_to :entity, class_name: 'Entity', optional: true
end
