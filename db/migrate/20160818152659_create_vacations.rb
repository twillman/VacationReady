class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.text :name
      t.text :location
      t.integer :budget
      t.integer :duration
      t.date :date
      t.references :user, index: true, foreign_key: true
    end
  end
end
