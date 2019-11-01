class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :make
      t.string :rego
      t.references :owner, foreign_key: {to_table: :users}
      t.references :cleaner, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
