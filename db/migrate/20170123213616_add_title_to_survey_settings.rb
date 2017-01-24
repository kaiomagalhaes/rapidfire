class AddTitleToSurveySettings < ActiveRecord::Migration[5.0]
  def change
    add_column :rapidfire_survey_settings, :title, :string, :default => "Survey"
  end
end
