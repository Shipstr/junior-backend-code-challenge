class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.string :company_name, null: false
      t.decimal :flat_rate, precision: 5, scale: 2
      t.timestamps
    end
  end
end
