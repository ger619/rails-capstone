class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  has_one_attached :icon
  belongs_to :user, class_name: 'User', optional: true
  has_many :entities, foreign_key: :group_id, class_name: 'Entity', dependent: :destroy
end
