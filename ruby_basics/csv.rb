# frozen_string_literal: true

require 'csv'

# csv_file = CSV.read('data.csv')

csv_string = "promise,evy,john,solomon"
parsed_string = CSV.parse(csv_string)

# seasons = ['spring', 'autum', 'june', 'july']

CSV.open('data.csv', 'a') do |csv|
  csv << parsed_string
end

# some_string = CSV.generate do |csv|
#   csv << seasons
# end

# p some_string
