require 'csv'
require_relative './intermedian'

class WriteCsv

  def array_2_csv
    header = Intermedian.new.creating_heads
    data_parsed = Intermedian.new.nested_hash_2_arr

    CSV.open("./data/new_doc.csv", "w") do |csv|
      csv << header
      data_parsed.each do |dt_array|
        csv << dt_array
      end
    end

  end
end
