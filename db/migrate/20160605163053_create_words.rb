class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :entry
      t.string :definition
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
