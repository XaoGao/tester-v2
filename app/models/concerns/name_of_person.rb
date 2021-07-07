module NameOfPerson
  extend ActiveSupport::Concern
  included do
    def full_name
      "#{last_name} #{first_name} #{middle_name}"
    end

    def abbreviated
      "#{last_name} #{first_name.first}. #{middle_name.first}."
    end
  end
end
