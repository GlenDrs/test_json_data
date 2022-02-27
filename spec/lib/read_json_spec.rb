require_relative '../../lib/read_json'

RSpec.describe JsonFile do
  let(:json_file) { described_class.new.parse_json }
  
  it "#data_parsed" do
    expect(json_file).to be_a Array
  end

  context "test Hash inside"
  it do
    expect(json_file.sample).to be_a Hash
  end

  context "reading inside"
  it do
    expect(json_file).to include
    (
    {"email"=>"colleengriffith@quintity.com",
    "id"=>0,
    "profiles"=>
    {"facebook"=> {"id"=>0,
    "picture"=>"//fbcdn.com/a2244bc1-b10c-4d91-9ce8-184337c6b898.jpg"},
    "twitter"=> {"id"=>0,
    "picture"=>"//twcdn.com/ad9e8cd3-3133-423e-8bbf-0602e4048c22.jpg"}},
    "tags"=>["consectetur", "quis"]}
    )
  end
end
