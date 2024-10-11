# frozen_string_literal: true

RSpec.describe RandomMap do
  it "has a version number" do
    expect(RandomMap::VERSION).not_to be nil
  end

  describe RandomMap::Map do
    describe "#initialize" do
      context "when default values" do
        let(:map) { described_class.new }

        it "sets default rows" do
          expect(map.rows).to eq 12
        end

        it "sets default cols" do
          expect(map.cols).to eq 48
        end
      end

      context "when passed values" do
        let(:map) { described_class.new(rows:, cols:) }
        let(:rows) { 8 }
        let(:cols) { 32 }

        it "sets rows" do
          expect(map.rows).to eq 8
        end

        it "sets cols" do
          expect(map.cols).to eq 32
        end
      end
    end

    describe "#generate" do
      let(:map) { described_class.new(rows:, cols:) }
      let(:rows) { 10 }
      let(:cols) { 40 }

      it "outputs row and col data" do
        expect { map.generate }.to output("rows 10, cols 40").to_stdout
      end
    end
  end
end
