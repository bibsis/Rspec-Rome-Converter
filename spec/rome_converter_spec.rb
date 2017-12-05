require_relative '../lib/rome_converter.rb'

RSpec.describe RomeConverterSpec do

  describe "#to_rome" do
      do
        expect(RomeConverter.new.to_rome(1)).to eq("I")
      end

	  do
        expect(RomeConverter.new.to_rome(5)).to eq("V")
      end

	  do
        expect(RomeConverter.new.to_rome(10)).to eq("X")
      end

	  do
        expect(RomeConverter.new.to_rome(50)).to eq("L")
      end

	  do
        expect(RomeConverter.new.to_rome(100)).to eq("C")
      end

      do
        expect(RomeConverter.new.to_rome(500)).to eq("D")
      end

      do
        expect(RomeConverter.new.to_rome(1000)).to eq("M")
      end
    end

   do
      do
        expect(RomeConverter.new.to_rome(2)).to eq("II")
      end

      do
        expect(RomeConverter.new.to_rome(4)).to eq("IV")
      end

      do
        expect(RomeConverter.new.to_rome(9)).to eq("IX")
      end

      do
        expect(RomeConverter.new.to_rome(40)).to eq("XL")
      end
    end

    do
      do
        expect(RomeConverter.new.to_rome(0)).not_to eq(" ")
      end
	  
	  do
        expect(RomeConverter.new.to_rome(5050)).not_to eq("MMMMML")
      end

      do
        expect(RomeConverter.new.to_rome(7001)).not_to eq("MMMMMMMI")
      end
    end
  end

  describe "#to_dec" do
      do
        expect(RomeConverter.new.to_dec('I')).to eq(1)
      end

      do
        expect(RomeConverter.new.to_dec('L')).to eq(50)
      end

      do
        expect(RomeConverter.new.to_dec('C')).to eq(100)
      end

	  do
        expect(RomeConverter.new.to_dec('M')).to eq(1000)
      end
    end

  do
    do
      expect(RomeConverter.new.to_dec('XIV')).to eq(14)
    end

    do
      expect(RomeConverter.new.to_dec('XIIII')).not_to eq(14)
    end

    do
      expect(RomeConverter.new.to_dec('XXIIIV')).not_to eq(18)
    end
  end

  do
    do
      expect(RomeConverter.new.to_dec('')).not_to eq(0)
    end

    do
      expect(RomeConverter.new.to_dec('MMMMMC')).not_to eq(5050)
    end

	do
      expect(RomeConverter.new.to_dec('MMMMMMMI')).not_to eq(7001)
    end
  end
end
end
