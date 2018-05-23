class CreateMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :masters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :picture
      t.string :abilities
      t.integer :salary
      t.string :education

      t.timestamps
    end
  end
end
