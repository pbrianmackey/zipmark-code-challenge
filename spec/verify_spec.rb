require_relative '../DataReader'

RSpec.describe "something" do
  context "test one line" do
    it "testing one line" do
    		reader = DataReader.new
    		reader.ReadLine();
    end
  end
  context "in another context" do
    it "does another thing" do
    end
  end
end