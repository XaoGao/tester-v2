module Statusable
  extend ActiveSupport::Concern

  included do
    def status
      lock ? 'Не активный' : 'Активный'
    end
  end
end
