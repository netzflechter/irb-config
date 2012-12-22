module IRB
  module MongoidColors
    def self.setup
      return unless IRB.try_require 'coderay'
      require '~/.irb/irb/coderay_term'

      Mongoid.logger = Rails.logger if defined?(::Rails)
      IRB.try_require 'mongoid-colors' if defined?(::Mongoid)
    end
    setup
  end
end
