require "./spec_helper"

describe ENVCR do
  it "works" do
    ENVCR.load! "./examples/1_basic.yml"
  end
end
