require "rotational_cipher"

describe RotationalCipher do
  let(:encryption_5) do 
    RotationalCipher.new(5)
  end

  let(:encryption_0) do
    RotationalCipher.new(0)
  end

  let(:encryption_26) do
    RotationalCipher.new(26)
  end

  let(:encryption_13) do
    RotationalCipher.new(13)
  end

  let(:encryption_invalid) do
    RotationalCipher.new(27)
  end

  describe "#rot" do
    context "given string should be encrypt" do

      it "returns trl" do
        expect(encryption_5.rot("omg")).to eql("trl")
      end

      it "returns c" do
        expect(encryption_0.rot("c")).to eql("c")
      end

      it "returns Cool" do
        expect(encryption_26.rot("Cool")).to eql("Cool")
      end  

      it "returns Gur dhvpx oebja sbk whzcf bire gur ynml qbt." do
        expect(encryption_13.rot("The quick brown fox jumps over the lazy dog.")).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
      end  

      it "returns The quick brown fox jumps over the lazy dog." do
        expect(encryption_13.rot("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")).to eql("The quick brown fox jumps over the lazy dog.")
      end 

    end
  end

  describe "#valid_number?" do
    context "given invalid number should return false" do
      it "return false" do
        expect(encryption_invalid.valid_number?).to be_falsey
      end   
    end
  end

end



