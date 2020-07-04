class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :phone
      t.integer :age
      t.string :education_level

      t.timestamps
    end
  end
end
