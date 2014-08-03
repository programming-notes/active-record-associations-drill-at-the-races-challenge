require_relative '../app'

describe "Double Time Derby" do
  let(:race)   {Race.find_by(name: "Double Time Derby")}
  let(:franny) {Jockey.find_by(name: "Flying Franny")}
  let(:larry)  {Jockey.find_by(name: "Lightning Larry")}
  let(:sally)  {Jockey.find_by(name: "Slender Sally")}
  let(:tim)    {Jockey.find_by(name: "Tiny Tim")}

  let(:allstar)  {Horse.find_by(name: "Allstar")}
  let(:nitro)    {Horse.find_by(name: "Nitro")}
  let(:hotshot)  {Horse.find_by(name: "Hotshot")}
  let(:stardust) {Horse.find_by(name: "Stardust")}

  it "is present in the database" do
    expect(race).to_not be_nil
  end

  it "has four appearances" do
    expect(race.appearances.length).to eq 4
  end

  it "has the correct four jockeys" do
    expect(race.jockeys).to match_array [franny, larry, sally, tim]
  end

  it "has the correct four horses" do
    expect(race.horses).to match_array [allstar, nitro, hotshot, stardust]
  end

  describe "Sally's Appearance" do
    let(:sally_appearance) {race.appearances.find_by(jockey: sally)}

    it "has the correct horse" do
      expect(sally_appearance.horse).to eq nitro
    end

    it "has the correct color" do
      expect(sally_appearance.uniform_color).to eq "pink"
    end
  end

  describe "Larry's Appearance" do
    let(:larry_appearance) {race.appearances.find_by(jockey: larry)}

    it "has the correct horse" do
      expect(larry_appearance.horse).to eq hotshot
    end

    it "has the correct color" do
      expect(larry_appearance.uniform_color).to eq "white"
    end
  end

  describe "Franny's Appearance" do
    let(:franny_appearance) {race.appearances.find_by(jockey: franny)}

    it "has the correct horse" do
      expect(franny_appearance.horse).to eq allstar
    end

    it "has the correct color" do
      expect(franny_appearance.uniform_color).to eq "red"
    end
  end

  describe "Tim's Appearance" do
    let(:tim_appearance) {race.appearances.find_by(jockey: tim)}

    it "has the correct horse" do
      expect(tim_appearance.horse).to eq stardust
    end

    it "has the correct color" do
      expect(tim_appearance.uniform_color).to eq "orange"
    end

    it "is the winning appearance" do
      expect(race.winner).to eq tim_appearance
    end
  end
end
