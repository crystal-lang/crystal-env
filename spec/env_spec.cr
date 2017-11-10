require "spec"
require "../env"

describe Crystal::Env do
  it "returns development by default" do
    Crystal.env.development?.should eq(true)
  end
end
