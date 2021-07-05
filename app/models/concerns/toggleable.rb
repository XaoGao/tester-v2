module Toggleable
  extend ActiveSupport::Concern

  included do
    def toggle!
      update(lock: !lock)
    end
  end
end
