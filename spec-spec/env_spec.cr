require "spec"
require "../src/crystal-env/spec"
require "../src/crystal-env"

describe Crystal::Env do
  it "returns test by default" do
    Crystal.env.test?.should eq(true)
    Crystal.env.name.should eq("test")
  end
end
