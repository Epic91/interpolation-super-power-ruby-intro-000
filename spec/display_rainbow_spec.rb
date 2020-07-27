
describe "display_rainbow" do
  it "accepts one argument" do
    colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

      expect { display_rainbow(colors) }.to_not raise_error(NoMethodError)
      expect { display_rainbow(colors) }.to_not raise_error(ArgumentError)
  end

  it "prints out the colors of the rainbow correctly when passed in in order" do
    colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

    expect(colors).to receive(:[]).with(0).at_least(:once).and_return("red")
    expect(colors).to receive(:[]).with(1).at_least(:once).and_return("orange")
    expect(colors).to receive(:[]).with(2).at_least(:once).and_return("yellow")
    expect(colors).to receive(:[]).with(3).at_least(:once).and_return("green")
    expect(colors).to receive(:[]).with(4).at_least(:once).and_return("blue")
    expect(colors).to receive(:[]).with(5).at_least(:once).and_return("indigo")
    expect(colors).to receive(:[]).with(6).at_least(:once).and_return("violet")

  end
end
