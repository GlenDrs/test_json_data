require_relative '../../lib/write_csv'

RSpec.describe WriteCsv do
  let(:make_csv) { described_class.new.array_2_csv }
  it 'returns csv doc' do
    expect(make_csv[0][0]).to eq 0
    expect(make_csv[4][2]).to eq ["id", "voluptate"]
    expect(make_csv[7][6]).to eq "//twcdn.com/243d581a-4376-4ce6-80c1-12352856b5bf.jpg"
    expect(make_csv[9][3]).to eq 9
  end
end
