class CreatePreNatals < ActiveRecord::Migration[7.1]
  def change
    create_table :pre_natals do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
