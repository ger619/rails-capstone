class Entity < ApplicationRecord
  validates :name, presence: true
  # validates :icon, presence: true
  belongs_to :user, class_name: 'User', optional: true
  has_many :groups, foreign_key: :entity_id, class_name: 'Group', dependent: :destroy
end
