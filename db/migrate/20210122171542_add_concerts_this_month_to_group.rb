class AddConcertsThisMonthToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :concerts_this_month, :integer
  end
end
