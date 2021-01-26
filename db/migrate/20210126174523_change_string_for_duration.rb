class ChangeStringForDuration < ActiveRecord::Migration[6.0]
  def change
    change_column :concerts, :duration, :string
  end
end
