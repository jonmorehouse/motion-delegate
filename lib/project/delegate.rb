module Delegate
  module Delegate

    def self.included(base)
      base.extend(ClassMethods)

    end

    module ClassMethods

      def delegate(object, *method_names)
        method_names.each do
          
        end
      end

      def event_delegate(object, *method_names)

      end


    end
  end
end

