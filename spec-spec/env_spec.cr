require "spec"
require "../env/spec"
require "../env"

describe Crystal::Env do
  it "returns test by default" do
    Crystal.env.test?.should eq(true)
  end
end
