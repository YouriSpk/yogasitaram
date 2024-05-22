class CreateTeacherCvs < ActiveRecord::Migration[7.1]
  def change
    create_table :teacher_cvs do |t|
      t.string :name
      t.text :experience
      t.text :certifications
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
