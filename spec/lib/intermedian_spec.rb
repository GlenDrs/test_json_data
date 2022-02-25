require_relative '../../lib/intermedian'

RSpec.describe Intermedian do
  let (:heads) { described_class.new.creating_heads }
  id do
    expect(heads).to eq [id,email,tags,profiles.facebook.id,profiles.facebook.picture,profiles.twitter.id,profiles.twitter.picture]
  end
end
