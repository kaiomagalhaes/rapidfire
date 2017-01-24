module Rapidfire
  class SurveySetting < ActiveRecord::Base
    has_one :survey, inverse_of: :survey_setting
  end
end
