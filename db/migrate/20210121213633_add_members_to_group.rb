class AddMembersToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :members, :integer
  end
end
