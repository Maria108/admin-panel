class CreateJoinTableMasterCohort < ActiveRecord::Migration[5.2]
  def change
    create_join_table :masters, :cohorts do |t|
      # t.index [:master_id, :cohort_id]
      # t.index [:cohort_id, :master_id]
    end
  end
end
