class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers do |t|
      t.string :name, null: false
      t.decimal :flat_rate, precision: 5, scale: 2
      t.timestamps
    end
  end
end
