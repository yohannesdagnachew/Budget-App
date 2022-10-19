class Entity < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :entities, foreign_key: 'group_id'

  validates :name, presence: true 
end
