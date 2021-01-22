class AddGenderToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :gender, :string
  end
end
