class Master < ApplicationRecord
    hhas_many :courses, through: :cohorts
end
