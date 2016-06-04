class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.string :definition

      t.timestamps null: false
    end
  end
end
