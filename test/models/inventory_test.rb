require "test_helper"

describe Inventory do
  let(:inventory) { Inventory.new }

  it "must be valid" do
    value(inventory).must_be :valid?
  end
end
