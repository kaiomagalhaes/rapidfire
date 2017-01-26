class AddColorToSurveySetting < ActiveRecord::Migration[5.0]
  def change
    add_column :rapidfire_survey_settings, :background_color, :string, default: 'white'
    add_column :rapidfire_survey_settings, :title_color, :string, default: 'black'
    add_column :rapidfire_survey_settings, :question_color, :string, default: 'black'
  end
end
