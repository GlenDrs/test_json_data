require_relative './read_json'

class Intermedian
  def data_parsed
    JsonFile.new.parse_json
  end

end
