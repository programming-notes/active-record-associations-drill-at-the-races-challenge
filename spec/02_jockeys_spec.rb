require_relative "../app"

describe "Jockeys" do
  it "has four jockeys with corect names" do
    names = Jockey.all.order(:name).map(&:name)

    expect(names).to eq ["Flying Franny", "Lightning Larry", "Slender Sally", "Tiny Tim"]
  end
end

describe "Flying Franny" do
  let(:franny) {Jockey.find_by(name: "Flying Franny")}

  it "has the correct height" do
    expect(franny.height_in_inches).to eq 60
  end

  it "has the correct weight" do
    expect(franny.weight).to eq 115
  end
end

describe "Lightning Larry" do
  let(:larry) {Jockey.find_by(name: "Lightning Larry")}

  it "has the correct height" do
    expect(larry.height_in_inches).to eq 62
  end

  it "has the correct weight" do
    expect(larry.weight).to eq 117
  end
end

describe "Slender Sally" do
  let(:sally) {Jockey.find_by(name: "Slender Sally")}

  it "has the correct height" do
    expect(sally.height_in_inches).to eq 57
  end

  it "has the correct weight" do
    expect(sally.weight).to eq 108
  end
end

describe "Tiny Tim" do
  let(:tim) {Jockey.find_by(name: "Tiny Tim")}

  it "has the correct height" do
    expect(tim.height_in_inches).to eq 54
  end

  it "has the correct weight" do
    expect(tim.weight).to eq 119
  end
end
