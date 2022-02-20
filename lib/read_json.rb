require 'json'
require 'byebug'

class JsonFile
  def parse_json
    JSON.parse(File.read file_path)
  end

  private

  def file_path
    './data/users.json'
  end

end
