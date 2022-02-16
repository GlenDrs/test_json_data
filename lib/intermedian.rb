require_relative './read_json'

class Intermedian
  def data_parsed
    JsonFile.new.parse_json
  end

  def creating_heads
    heads_0 = data_parsed[0]
    first_titles =  heads_0.keys
    second_titles = heads_0["profiles"].keys
    third_titles = heads_0["profiles"]["facebook"].keys

    fb_id = first_titles.last + "." + second_titles.first + "." + third_titles.first
    fb_picture = first_titles.last + "." + second_titles.first + "." + third_titles.last
    twitter_id = first_titles.last + "." + second_titles.last + "." + third_titles.first
    twitter_photo = first_titles.last + "." + second_titles.last + "." + third_titles.last

    final_heads = first_titles  + [fb_id, fb_picture, twitter_id, twitter_photo] - ["profiles"]
  end

  def nested_hash_2_arr
    array_values = data_parsed.map do |array_hash|
      [
      array_hash.values,
      array_hash.values[3]["facebook"]["id"],
      array_hash.values[3]["facebook"]["picture"],
      array_hash.values[3]["twitter"]["id"],
      array_hash.values[3]["twitter"]["picture"],
      ]
    end

    array_values.each {|result0| result0[0].slice!(3)}
  end

  def with_header
    creating_heads + nested_hash_2_arr
  end

end
