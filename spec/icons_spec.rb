# frozen_string_literal: true

RSpec.describe RandomMap::Icons do
  describe "icons" do
    it { expect(RandomMap::Icons::EMPTY).to eq " " }

    it { expect(RandomMap::Icons::LIVE_TREE).to eq "♣" }
    it { expect(RandomMap::Icons::DEAD_TREE).to eq "♧" }

    it { expect(RandomMap::Icons::CORNER_TOP_LEFT).to eq "┌" }
    it { expect(RandomMap::Icons::CORNER_TOP_RIGHT).to eq "┐" }
    it { expect(RandomMap::Icons::CORNER_BOTTOM_LEFT).to eq "└" }
    it { expect(RandomMap::Icons::CORNER_BOTTOM_RIGHT).to eq "┘" }
    it { expect(RandomMap::Icons::HORIZONTAL_BORDER).to eq "┬" }
    it { expect(RandomMap::Icons::VERTICAL_BORDER).to eq "│" }

    it { expect(RandomMap::Icons::DOG).to eq "ᢇ" }
  end
end
