module Defaultable
  extend ActiveSupport::Concern

  included do
    def self.default
      default_object = find_by(name: 'default')
      return default_object if default_object.present?

      create(level: 0, lock: false, name: 'default')
    end
  end
end
