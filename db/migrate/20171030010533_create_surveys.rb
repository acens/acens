class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :email
      t.string :registration
      t.references :survey_option, foreign_key: true

      t.timestamps
    end
  end
end
