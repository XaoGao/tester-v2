module Sortable
  extend ActiveSupport::Concern

  included do
    scope :order_by, ->(field) { order(field.to_s) }
    scope :order_by_reverse, ->(field) { order("#{field} DESC") }
  end
end
