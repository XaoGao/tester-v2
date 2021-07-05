module Activeable
  extend ActiveSupport::Concern

  included do
    scope :enabled, -> { where(lock: false) }
    scope :disabled, -> { where(lock: true) }
  end
end
