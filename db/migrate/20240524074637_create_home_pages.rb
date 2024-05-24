class CreateHomePages < ActiveRecord::Migration[7.1]
  def change
    create_table :home_pages do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
