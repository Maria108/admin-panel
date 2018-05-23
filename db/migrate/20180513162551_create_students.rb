class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :abilities
      t.string :picture
      t.integer :age
      t.string :education
      t.references :cohort

      t.timestamps
    end
  end
end
