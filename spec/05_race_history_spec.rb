require_relative "../app"

describe "Race History" do
  let(:stakes) {Race.find_by(name: "Pretty High Stakes")}
  let(:derby) {Race.find_by(name: "Double Time Derby")}

  let(:allstar)  {Horse.find_by(name: "Allstar")}
  let(:nitro)    {Horse.find_by(name: "Nitro")}
  let(:hotshot)  {Horse.find_by(name: "Hotshot")}
  let(:stardust) {Horse.find_by(name: "Stardust")}

  describe "Franny" do
    let(:franny) {Jockey.find_by(name: "Flying Franny")}

    it "has raced in the Stakes & the Derby" do
      expect(franny.races).to match_array [stakes, derby]
    end

    it "has only raced Allstar" do
      expect(franny.raced_horses.uniq).to match_array [allstar]
    end
  end

  describe "Larry" do
    let(:larry) {Jockey.find_by(name: "Lightning Larry")}

    it "has raced in the Stakes & the Derby" do
      expect(larry.races).to match_array [stakes, derby]
    end

    it "has raced Nitro & Hotshot" do
      expect(larry.raced_horses.uniq).to match_array [nitro, hotshot]
    end
  end

  describe "Sally" do
    let(:sally) {Jockey.find_by(name: "Slender Sally")}

    it "has raced in the Stakes & the Derby" do
      expect(sally.races).to match_array [stakes, derby]
    end

    it "has raced Hotshot & Nitro" do
      expect(sally.raced_horses.uniq).to match_array [hotshot, nitro]
    end
  end

  describe "Tim" do
    let(:tim) {Jockey.find_by(name: "Tiny Tim")}

    it "has only raced in the Derby" do
      expect(tim.races).to match_array [derby]
    end

    it "has only raced Stardust" do
      expect(tim.raced_horses.uniq).to match_array [stardust]
    end
  end
end
