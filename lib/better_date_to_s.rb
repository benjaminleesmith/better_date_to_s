require File.join(File.dirname(__FILE__), 'better_date_to_s/better_date_to_s')
include BetterDateToS

class Date
  DATE_FORMATS = {
      :short        => lambda { |date| date.strftime("#{date.day} %b") },
      :long         => lambda { |date| date.strftime("%B #{date.day}, %Y") },
      :db           => "%Y-%m-%d",
      :number       => "%Y%m%d",
      :long_ordinal => lambda { |date| date.strftime("%B #{ActiveSupport::Inflector.ordinalize(date.day)}, %Y") }, # => "April 25th, 2007"
      :rfc822       => "%e %b %Y"
  }
end

class Railtie < Rails::Railtie
  initializer 'better_date_to_s' do
    set_date_formats_for(Rails.env, Rails.root.to_s)
  end
end
