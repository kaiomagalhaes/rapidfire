module Rapidfire
  class BaseService
    if Rails::VERSION::MAJOR == 4 || Rails::VERSION::MAJOR == 5
      include ActiveModel::Model
    else
      extend  ActiveModel::Naming
      include ActiveModel::Conversion
      include ActiveModel::Validations

      def persisted
        false
      end

      def initialize(params = {})
        if params
          params.each do |attr, value|
            public_send("#{attr}=", value)
          end
        end

        super()
      end
    end
  end
end
