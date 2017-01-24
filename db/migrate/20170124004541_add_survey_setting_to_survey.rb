class AddSurveySettingToSurvey < ActiveRecord::Migration[5.0]
  def change
    add_reference :rapidfire_surveys, :survey_setting, index: true
  end
end
