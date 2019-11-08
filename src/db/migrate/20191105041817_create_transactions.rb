class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :cleaner, foreign_key: {to_table: :users}
      t.references :car, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
