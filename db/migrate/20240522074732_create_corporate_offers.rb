class CreateCorporateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :corporate_offers do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
