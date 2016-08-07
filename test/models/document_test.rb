require "test_helper"

describe Document do
  let(:document) { Document.new }

  it "must be valid" do
    value(document).must_be :valid?
  end
end
