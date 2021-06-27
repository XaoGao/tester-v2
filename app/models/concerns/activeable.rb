module Activeable
  extend ActiveSupport::Concern

  included do
    scope :enabled, -> { where(lock: true) }
    scope :disabled, -> { where(lock: false) }
  end
end
