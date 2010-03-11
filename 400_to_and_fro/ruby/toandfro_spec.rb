$:.unshift(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'spec'
require 'toandfro'

describe "TO and FRO" do
  it "should decipher sentence" do
    ToAndFro.decipher(5,'toioynnkpheleaigshareconhtomesnlewx').should == 'theresnoplacelikehomeonasnowynightx'
    ToAndFro.decipher(3,'ttyohhieneesiaabss').should == 'thisistheeasyoneab'
  end
end