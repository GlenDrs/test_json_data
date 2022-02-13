require_relative './read_json'

def test_print_dt
  JsonFile.new.parse_json
end

test_print_dt
head_array = []
heads_0 = test_print_dt[0]
p first_titles =  heads_0.keys
p test_print_dt[test_print_dt.last]
