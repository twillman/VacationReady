class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|
      t.date :due_date
      t.string :task
      t.string :status
      t.references :vacation

      t.timestamps null: false
    end
  end
end
