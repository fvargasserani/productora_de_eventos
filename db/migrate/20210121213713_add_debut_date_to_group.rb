class AddDebutDateToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :debut_date, :date
  end
end
