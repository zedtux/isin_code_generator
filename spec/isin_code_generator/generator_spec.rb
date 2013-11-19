require 'spec_helper'

describe IsinCodeGenerator do

  describe "#make" do
    context "without passing argument" do
      it "should raise an ArgumentError" do
        lambda {
          subject.make
        }.should raise_error(ArgumentError)
      end
    end
    context "passing a string with a lenght greater than 2 characters" do
      it "should raise an ArgumentError" do
        lambda {
          subject.make("ThisIsALongString")
        }.should raise_error(ArgumentError)
      end
    end
    context "passing a string including space" do
      it "should raise an ArgumentError" do
        lambda {
          subject.make("L ")
        }.should raise_error(ArgumentError)
      end
    end
    context "passing LU has home country iso code" do
      it "should generate a Luxembourgish ISIN Code" do
        lu_isin_code = subject.make("LU")
        lu_isin_code.should_not be_nil
        lu_isin_code.should be_a(String)
        lu_isin_code.length.should be 12
        lu_isin_code[0,2].should == "LU"
        lu_isin_code[2,10].to_i.should_not be_zero
      end
    end
    context "passing FR has home country iso code" do
      it "should generate a French ISIN Code" do
        lu_isin_code = subject.make("FR")
        lu_isin_code.should_not be_nil
        lu_isin_code.should be_a(String)
        lu_isin_code.length.should be 12
        lu_isin_code[0,2].should == "FR"
        lu_isin_code[2,10].to_i.should_not be_zero
      end
    end
    context "calling 2 times the method" do
      it "should generate 2 different isin codes" do
        subject.make("BE").should_not == subject.make("BE")
      end
    end
  end

end
