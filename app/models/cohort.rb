class Cohort < ApplicationRecord
    belongs_to :course
    belongs_to :master
    has_many :students
end
