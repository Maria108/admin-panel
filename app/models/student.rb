class Student < ApplicationRecord
    has_many :courses, through: :cohorts
    has_one :user, as: :userable, dependent: :destroy
    accepts_nested_attributes_for :user, allow_destroy: true
end
