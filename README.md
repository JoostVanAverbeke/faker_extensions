faker_extensions
================

## Installation:
Add the following to your Gemfile

gem "faker", "~> 1.2.0"
gem 'faker_extensions', github: 'JoostVanAverbeke/faker_extensions'

You definitly need the 'faker' gem, because the faker_extensions gem reopens the Faker module and adds functionality

## USAGE: ##
# generates a random date of birth since 01/01/1900 until now
random_date_of_birth = Faker::Date.dob

# generates a random date of birth since 01/01/1960 until now
random_date_of_birth = Faker::Date.dob(:since => 1960)

# generates a random date of birth since 01/01/1970 until 31/12/2000
random_date_of_birth = Faker::Date.dob(:since => 1970, :until => 2000)

# generates a random date of birth since 01/01/1900 until 31/12/1930
random_date_of_birth = Faker::Date.dob(:until => 1930)







