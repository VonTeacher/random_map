# frozen_string_literal: true

RSpec.describe RandomMap do
  it "has a version number" do
    expect(RandomMap::VERSION).not_to be nil
  end

  describe RandomMap::Map do
    describe "#generate" do
      it "outputs some text" do
        expect { described_class.new.generate }.to output("We made a map").to_stdout
      end
    end
  end
end
