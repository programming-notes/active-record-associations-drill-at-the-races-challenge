require_relative '../app'

describe "Horses" do
  it "has four horses with correct names" do
    names = Horse.all.order(:name).map(&:name)

    expect(names).to eq ["Allstar", "Hotshot", "Nitro", "Stardust"]
  end
end

describe "Stardust" do
  it "has the correct breed" do
    stardust = Horse.find_by(name: "Stardust")

    expect(stardust.breed).to eq "Arabian"
  end
end

describe "Allstar" do
  it "has the correct breed" do
    stardust = Horse.find_by(name: "Allstar")

    expect(stardust.breed).to eq "Mustang"
  end
end

describe "Nitro" do
  it "has the correct breed" do
    stardust = Horse.find_by(name: "Nitro")

    expect(stardust.breed).to eq "Dutch Warmblood"
  end
end

describe "Hotshot" do
  it "has the correct breed" do
    stardust = Horse.find_by(name: "Hotshot")

    expect(stardust.breed).to eq "Arabian"
  end
end
