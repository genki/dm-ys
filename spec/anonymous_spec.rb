require File.join( File.dirname(__FILE__), "spec_helper" )

describe DataMapper::YunkerStar do
  it "should provide []" do
    DataMapper::YunkerStar.should respond_to(:[])
  end

  describe "[]" do
    before(:each) do
      @uri = "http://merbi.st/plugins/index?page=1"
      @ys  = DataMapper::YunkerStar[@uri]
    end

    it "should return a new class" do
      @ys.should be_kind_of(Class)
    end

    it "should include DataMapper::YunkerStar" do
      @ys.ancestors.should be_include(DataMapper::YunkerStar)
    end

    it "should have ys option" do
      @ys.should respond_to(:ys)
    end

    describe ".ys" do
      it "should return a kind of Config" do
        @ys.ys.should be_kind_of(DataMapper::YunkerStar::Config)
      end
    end

    it "should set uri" do
      @ys.uri.should == @uri
    end
  end
end
