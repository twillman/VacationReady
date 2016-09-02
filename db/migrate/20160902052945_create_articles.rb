class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.references :vacation

      t.timestamps null: false
    end
  end
end
