require "spec_helper"

module TicTacToe

  describe Cell do
#Testing that Cell is instantiated with no args and default value is empty string
    context "#initialize" do
      it "is initialized with a value of '' by default" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end
#Testing that the Cell can be instantiated with a given value
      it "can be initialized with a value of 'X'" do
        cell = Cell.new('X')
        expect(cell.value).to eq "X"
      end
    end
  end
end