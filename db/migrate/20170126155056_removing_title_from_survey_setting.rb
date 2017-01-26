class RemovingTitleFromSurveySetting < ActiveRecord::Migration[5.0]
  def change
    remove_column :rapidfire_survey_settings, :title
  end
end
