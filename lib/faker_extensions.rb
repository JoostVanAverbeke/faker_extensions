require "faker_extensions/version"

module Faker
  class Date < Base
    class << self
      def dob(options = {})
        parameters = {
            :since => 1900,
            :until => -1
        }.merge(options)
        random_generator = Random.new
        julian_date_since = ::Date.new(parameters[:since], 1, 1).jd
        julian_date_until = parameters[:until] == -1 ? ::Date.today.jd : ::Date.new(parameters[:until], 12, 31).jd
        ::Date.jd(random_generator.rand(julian_date_since..julian_date_until))
      end
    end
  end
end
