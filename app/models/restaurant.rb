class Restaurant < ApplicationRecord
    has_many :dishes, dependent: :destroy
    has_many :reviews, as: :reviewable
    validates :status, inclusion: { in: [true, false] }
end
