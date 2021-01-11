require "spec"
require "../src/crystal-env"

describe Crystal::Env do
  it "returns development by default" do
    Crystal.env.development?.should eq(true)
    Crystal.env.name.should eq("development")
  end
end
