module Rapidfire
  class SurveySetting < ActiveRecord::Base
    has_one :survey
  end
end
