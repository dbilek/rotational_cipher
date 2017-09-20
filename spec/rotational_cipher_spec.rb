require "rotational_cipher"

describe RotationalCipher do
  rc = RotationalCipher.new
  
  describe "#rot" do
    context "given omg and '5'" do
      it "returns trl" do
        expect(rc.rot("omg",5)).to eql("trl")
      end
    end
  end

  describe "#rot" do
    context "given c and '0'" do
      it "returns c" do
        expect(rc.rot("c",0)).to eql("c")
      end
    end
  end

  describe "#rot" do
    context "given Cool and '26'" do
      it "returns Cool" do
        expect(rc.rot("Cool",26)).to eql("Cool")
      end  
    end
  end

  describe "#rot" do
    context "given The quick brown fox jumps over the lazy dog. and '13'" do
      it "returns Gur dhvpx oebja sbk whzcf bire gur ynml qbt." do
        expect(rc.rot("The quick brown fox jumps over the lazy dog.",13)).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
      end  
    end
  end

  describe "#rot" do
    context "given Gur dhvpx oebja sbk whzcf bire gur ynml qbt. and '13'" do
      it "returns The quick brown fox jumps over the lazy dog." do
        expect(rc.rot("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.",13)).to eql("The quick brown fox jumps over the lazy dog.")
      end  
    end
  end
end

