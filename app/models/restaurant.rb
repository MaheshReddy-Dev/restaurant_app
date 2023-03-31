class Restaurant < ApplicationRecord
    has_many :dishes, dependent: :destroy
    has_many :reviews, as: :reviewable
    validates :name, presence: true
    validates :name, presence: true
    validates :status, inclusion: { in: [true, false] }
end
