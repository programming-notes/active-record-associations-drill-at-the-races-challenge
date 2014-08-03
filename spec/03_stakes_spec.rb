require_relative '../app'

describe "Pretty High Stakes" do
  let(:race)   {Race.find_by(name: "Pretty High Stakes")}
  let(:franny) {Jockey.find_by(name: "Flying Franny")}
  let(:larry)  {Jockey.find_by(name: "Lightning Larry")}
  let(:sally)  {Jockey.find_by(name: "Slender Sally")}

  let(:allstar) {Horse.find_by(name: "Allstar")}
  let(:nitro)   {Horse.find_by(name: "Nitro")}
  let(:hotshot) {Horse.find_by(name: "Hotshot")}

  it "is present in the database" do
    expect(race).to_not be_nil
  end

  it "has three appearances" do
    expect(race.appearances.length).to eq 3
  end

  it "has the correct three jockeys" do
    expect(race.jockeys).to match_array [franny, larry, sally]
  end

  it "has the correct three horses" do
    expect(race.horses).to match_array [allstar, nitro, hotshot]
  end

  describe "Franny's Appearance" do
    let(:franny_appearance) {race.appearances.find_by(jockey: franny)}

    it "has the correct horse" do
      expect(franny_appearance.horse).to eq allstar
    end

    it "has the correct color" do
      expect(franny_appearance.uniform_color).to eq "violet"
    end

    it "is the winning appearance" do
      expect(race.winner).to eq franny_appearance
    end
  end

  describe "Larry's Appearance" do
    let(:larry_appearance) {race.appearances.find_by(jockey: larry)}

    it "has the correct horse" do
      expect(larry_appearance.horse).to eq nitro
    end

    it "has the correct color" do
      expect(larry_appearance.uniform_color).to eq "green"
    end
  end

  describe "Sally's Appearance" do
    let(:sally_appearance) {race.appearances.find_by(jockey: sally)}

    it "has the correct horse" do
      expect(sally_appearance.horse).to eq hotshot
    end

    it "has the correct color" do
      expect(sally_appearance.uniform_color).to eq "blue"
    end
  end
end
