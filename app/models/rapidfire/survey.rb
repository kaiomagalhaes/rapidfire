module Rapidfire
  class Survey < ActiveRecord::Base
    has_many :questions
    belongs_to :survey_setting, inverse_of: :survey
    validates :name, presence: true

    attr_accessible :name if Rails::VERSION::MAJOR == 3
  end
end
