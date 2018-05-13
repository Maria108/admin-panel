class Cohort < ApplicationRecord
    belongs_to :course
    has_many :students, through: :cohorts_students
    has_many :masters, through: :cohorts_masters
end
