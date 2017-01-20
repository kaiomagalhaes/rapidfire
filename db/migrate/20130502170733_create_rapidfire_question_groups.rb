class CreateRapidfireQuestionGroups < ActiveRecord::Migration
  def change
    create_table :rapidfire_surveys do |t|
      t.string  :name
      t.belongs_to :survey_setting, index: true
      t.timestamps
    end
  end
end
