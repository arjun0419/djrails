class CreateJoinTableDriverLanguage < ActiveRecord::Migration
  def change
    create_join_table :drivers, :languages do |t|
      t.index [:driver_id, :language_id]
      t.index [:language_id, :driver_id]
    end
  end
end
