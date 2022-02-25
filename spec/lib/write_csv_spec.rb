require '../../lib/write_csv'

RSpec.describe WriteCsv
  let(:make_csv) { described_class.new.array_2_csv }
  id do
    expect(make_csv).to eq
  end
end
