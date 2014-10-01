class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :firstName
      t.string :lastName
      t.string :languagesSpoken
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
