RSpec.describe WrapWord do
  it "has a version number" do
    expect(WrapWord::VERSION).not_to be nil
  end

  it "returns a string untouched if less then maximum character length" do
    expect(WrapWord::wrap(4, 'the')).to eq('the')
  end

  it 'splits a long word into two lines' do
    expect(WrapWord::wrap(4, 'theatre')).to eq("thea\ntre")
  end

  it 'splits two words onto two lines if they dont both fit onto one' do
    expect(WrapWord::wrap(7, 'the theatre')).to eq("the\ntheatre")
  end

  it 'keeps two words on one line if their combined length is under the char length' do
    expect(WrapWord::wrap(11, 'the theatre is fun')).to eq("the theatre\nis fun")
  end

  it 'works using the default width' do
    expect(WrapWord::wrap('the theatre is really fun and I like to go a lot')).to eq("the theatre is\nreally fun and I\nlike to go a lot")
  end
end
