require_relative '../../lib/intermedian'

RSpec.describe Intermedian do
  let(:heads) { described_class.new.creating_heads }
  it do
    expect(heads).to eq ["id", "email", "tags", "profiles.facebook.id", "profiles.facebook.picture", "profiles.twitter.id", "profiles.twitter.picture"]
  end

  context "creating array"
  let(:return_array) { described_class.new.nested_hash_2_arr }
  it do
    expect(return_array).to include
    (
    [0,
    "colleengriffith@quintity.com",
    ["consectetur", "quis"],
    0,
    "//fbcdn.com/a2244bc1-b10c-4d91-9ce8-184337c6b898.jpg",
    0,
    "//twcdn.com/ad9e8cd3-3133-423e-8bbf-0602e4048c22.jpg"]
    )
  end
end
