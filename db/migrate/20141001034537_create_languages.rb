class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|

      t.timestamps
      t.string :name
    end
  end
end
