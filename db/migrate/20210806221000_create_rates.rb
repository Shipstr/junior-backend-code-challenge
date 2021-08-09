class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.references :provider
      t.decimal :rate, precision: 5, scale: 2
      t.string :origin, null: false
      t.string :destination, null: false
      t.index [:origin, :destination, :provider_id], unique: true
      t.timestamps
    end
  end
end
