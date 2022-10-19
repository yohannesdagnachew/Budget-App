class Group < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'
    has_many :entities, foreign_key: 'group_id'

    has_one_attached :icon
    validates :name, presence: true
end
