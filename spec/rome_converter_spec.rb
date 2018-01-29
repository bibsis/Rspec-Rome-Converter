require './lib/rome_converter.rb'

describe RomeConverter do
  describe "#to_rome" do
      it "converts 1 to 'I'" do
        expect(RomeConverter.new.to_rome(1)).to eql("I")
      end

	  it "converts 2 to 'II'" do
        expect(RomeConverter.new.to_rome(2)).to eql("II")
      end

	  it "converts 4 to 'IV'" do
        expect(RomeConverter.new.to_rome(4)).to eql("IV")
      end

      it "converts 5 to 'V'" do
        expect(RomeConverter.new.to_rome(5)).to eql("V")
      end

  	  it "converts 9 to 'IX'" do
        expect(RomeConverter.new.to_rome(9)).to eql("IX")
      end

      it "converts 10 to 'X'" do
        expect(RomeConverter.new.to_rome(10)).to eql("X")
      end

	  it "converts 40 to 'XL'" do
        expect(RomeConverter.new.to_rome(40)).to eql("XL")
      end

	  it "converts 50 to 'L'" do
        expect(RomeConverter.new.to_rome(50)).to eql("L")
      end

	  it "converts 100 to 'C'" do
        expect(RomeConverter.new.to_rome(100)).to eql("C")
      end

	  it "converts 500 to 'D'" do
        expect(RomeConverter.new.to_rome(500)).to eql("D")
      end

	  it "converts 1000 to 'M'" do
        expect(RomeConverter.new.to_rome(1000)).to eql("M")
      end
	
      it "fail converts 13 to 'XIIV'" do
        expect(RomeConverter.new.to_rome(13)).not_to eq("XIIV")
      end

      it "fail converts 5050 to 'MMMMML'" do
        expect(RomeConverter.new.to_rome(5050)).not_to eq("MMMMML")
      end

      it "fail converts 7001 to 'MMMMMMMI'" do
        expect(RomeConverter.new.to_rome(7001)).not_to eq("MMMMMMMI")
      end
  end

  describe "#to_dec" do
      it "converts 'I' to 1" do
        expect(RomeConverter.new.to_dec('I')).to eql(1)
      end

	  it "converts 'L' to 50" do
        expect(RomeConverter.new.to_dec('L')).to eql(50)
      end

      it "converts 'C' to 100" do
        expect(RomeConverter.new.to_dec('C')).to eql(100)
      end

      it "converts 'III' to 3" do
		expect(RomeConverter.new.to_dec('III')).to eql(3)
      end
		
	  it "converts 'XIX' to 19" do
		expect(RomeConverter.new.to_dec('XIX')).to eql(19)
      end

	  it "converts 'LII' to 52" do
		expect(RomeConverter.new.to_dec('LII')).to eql(52)
      end

      it "fail converts 'XIIII' to 14" do
		expect(RomeConverter.new.to_dec('XIIII')).not_to eq(14)
      end

	  it "fail converts 'XVIII' to 18" do
		expect(RomeConverter.new.to_dec('XVIII')).not_to eq(18)
      end
	
	  it "fail converts ' ' to 0" do
		expect(RomeConverter.new.to_dec(' ')).not_to eq(0)
      end

end
end
