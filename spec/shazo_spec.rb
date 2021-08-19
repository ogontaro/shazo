RSpec.describe Shazo do
  it "has a version number" do
    expect(Shazo::VERSION).not_to be nil
  end

  describe "#initialize" do
    class MappedHash < Hash
      include Shazo

      property :id, -> { origin[:user_id] }
      property :name, -> { origin[:namae] }
    end

    let(:before) { {user_id: 1, namae: "ogontaro"} }
    let(:after) { {id: 1, name: "ogontaro"} }
    it "変換したmapを返す" do
      expect(MappedHash.new(before)).to eq after
    end
  end
end
