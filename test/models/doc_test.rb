require "test_helper"

describe Doc do
  let(:doc) { Doc.new }

  it "must be valid" do
    value(doc).must_be :valid?
  end
end
