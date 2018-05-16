class Master < ApplicationRecord
    has_many :courses, through: :cohorts
end
