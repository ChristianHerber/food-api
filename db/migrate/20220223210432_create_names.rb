class CreateNames < ActiveRecord::Migration[6.1]
  def change
    create_table :names do |t|
      t.string :phone_number
      t.float :total_value
      t.integer :status
      t.references :restaurant, null: false, foreign_key: true
      t.string :city
      t.string :stree
      t.string :neighborhood
      t.string :number
      t.string :complement

      t.timestamps
    end
  end
end
