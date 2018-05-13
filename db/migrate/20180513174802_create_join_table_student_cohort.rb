class CreateJoinTableStudentCohort < ActiveRecord::Migration[5.2]
  def change
    create_join_table :students, :cohorts do |t|
      # t.index [:student_id, :cohort_id]
      # t.index [:cohort_id, :student_id]
    end
  end
end
