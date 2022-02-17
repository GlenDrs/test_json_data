require_relative './lib/intermedian'
require_relative './lib/write_csv'

def call
  WriteCsv.new.array_2_csv
end

call
