class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :name
      t.references :vacation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
