class CreateSurveyOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_options do |t|
      t.string :name

      t.timestamps
    end
  end
end
