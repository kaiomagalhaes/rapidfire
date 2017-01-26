module Rapidfire
  class SurveySetting < ActiveRecord::Base
    has_one :survey, inverse_of: :survey_setting, dependent: :destroy

    validates :background_color, presence: true
    validates :title_color, presence: true
    validates :question_color, presence: true
  end
end
