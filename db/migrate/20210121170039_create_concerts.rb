class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.date :date
      t.string :place
      t.integer :attendance

      t.timestamps
    end
  end
end
