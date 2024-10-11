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
        let(:map) { described_class.new(rows: rows, cols: cols) }
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
      let(:map) { described_class.new(rows: rows, cols: cols) }
      let(:rows) { 5 }
      let(:cols) { 5 }

      it "generates a random map" do
        expect { map.generate }.to output(
          <<~MAP
            ┌┬┬┬┬┬┐
            │     │
            │     │
            │     │
            │     │
            │     │
            └┬┬┬┬┬┘
          MAP
        ).to_stdout
      end
    end
  end
end
