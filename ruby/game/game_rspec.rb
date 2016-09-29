require_relative 'game'

describe Game do
	let(:game) {Game.new}

	it "allows user 1 to set a secret word" do
		expect(game.set_secret("tomato")).to eq "tomato"
	end

	it "checks if we won" do
		game.feedback = "mom"
		expect(game.check_over).to eq true
	end
	
end