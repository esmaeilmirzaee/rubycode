require "minitest/autorun"
require "minitest/spec"
$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

require './progress_50'

describe MilitaryToRegular do
  subject { MilitaryToRegular.new("1630")}

  it "should be a military to regular instance" do
    subject.must_be_instance_of MilitaryToRegular
  end

  it "should have a time variable" do
    subject.must_respond_to 'time'
  end

  it "should be instance of String" do
    subject.time.must_be_instance_of String
    subject.time != nil
  end

  describe "#change" do
    before do
      @military_time = MilitaryToRegular.new("1630")
    end

    it "responds to the change method" do
      @military_time.must_respond_to 'change'
    end

    it "returns an int value" do
      @military_time.change == @military_time.time.to_i
    end
  end
end
