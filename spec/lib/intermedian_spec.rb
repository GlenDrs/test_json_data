require_relative '../../lib/intermedian'

RSpec.describe Intermedian do
  subject(:intermedian) { described_class.new}

  it "#creating_heads" do
    expect(intermedian.creating_heads).to eq ["id", "email", "tags", "profiles.facebook.id", "profiles.facebook.picture", "profiles.twitter.id", "profiles.twitter.picture"]
  end

  it "#nested_hash_2_arr" do
    expect(intermedian.nested_hash_2_arr).to be_a Array
  end

  context "Verify Array"
  it do
    expect(intermedian.nested_hash_2_arr).to include
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
