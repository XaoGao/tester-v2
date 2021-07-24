module DateFormatter
  def only_date_format(*args)
    args.each do |arg|
      define_method("#{arg}_date") do
        send(arg).strftime('%d.%m.%Y')
      end
    end
  end
  # extend ActiveSupport::Concern

  # included do
  # def full_date_format(*args)
  #   *args.each do |arg|
  #     define_method("#{arg}_date") do
  #       arg.strftime('%d.%m.%Y')
  #     end
  #   end
  # end
  # end
end
