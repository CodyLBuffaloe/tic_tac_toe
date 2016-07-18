require "spec_helper"

module TicTacToe
  describe Player do
    context "#initialize" do
#Testing that Player class raises an exception when initialized w/invalid Hash
      it "raises an exception when initialized with {}" do
        expect { Player.new({}) }.to raise_error
      end
#Testing that Player class does NOT raise exception when supplied w/correct input
      it "does not raise an exception when initialized with a valid input" do
        input = { color: "X", name: "Someone" }
        expect { Player.new(input) }.to_not raise_error
      end
    end

    context "#color" do
#Testing to ensure the getter method for color was created correctly.
      it "returns the color" do
        input = { color: "X", name: "Someone" }
        player = Player.new(input)
        expect(player.color).to eq "X"
      end
    end

    context "#name" do
      it "returns the player's name" do
        input = { color: "X", name: "Someone" }
        player = Player.new(input)
        expect(player.name).to eq "Someone"
      end
    end
  end
end