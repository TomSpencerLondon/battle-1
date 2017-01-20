require './lib/game'

describe Game do

	subject(:game)		{described_class.new(player1, player2)}
	let (:player1) 		{ double :player, name: "Dave", chr: ""}
	let (:player2)		{ double :player, name: "Mittens", chr: "" }

	describe '#defaults' do
		it "player 1 to be an player object" do
			expect(game.player1).to eq player1
		end

		it "player 2 to be an player object" do
			expect(game.player2).to eq player2
		end
	end

	describe '#attack' do
    it 'damages the player' do
			allow(player2).to receive(:receive_damage)
			allow(player2).to receive(:points).and_return(100)
			expect(game.attack(player2)).to eq "Dave attacks Mittens"
		end

		it 'can poison a player' do
			allow(player2).to receive(:receive_damage)
			allow(player2).to receive(:points).and_return(100)
			expect(game.attack(player2,'poison')).to eq "Dave poisons Mittens"
		end
	end

	describe '#snooze' do
		it 'allows player 1 to snooze player 2' do
			expect(game.snooze(player2)).to eq "Dave snoozes Mittens"
		end
	end

	describe '#switch_turns' do
		it 'switches the turn' do
			expect(game.switch_turns).to eq 1
		end
	end

	describe '#confirm' do
		it 'it displays a message to the players' do
			allow(player1).to receive(:points).and_return(100)
			allow(player2).to receive(:points).and_return(100)
			expect(game.confirm).to eq("Mittens attacks Dave")
		end
	end

end
