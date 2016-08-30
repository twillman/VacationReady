class AddDetailsToVacations < ActiveRecord::Migration
  def change
    add_column :vacations, :adults, :integer
    add_column :vacations, :kids, :integer
  end
end
