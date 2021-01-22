class AddDurationToConcert < ActiveRecord::Migration[6.0]
  def change
    add_column :concerts, :duration, :time
  end
end
