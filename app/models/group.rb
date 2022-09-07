class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  has_one_attached :icon
  belongs_to :user, class_name: 'User', optional: true

  def recent_groups; end
end
