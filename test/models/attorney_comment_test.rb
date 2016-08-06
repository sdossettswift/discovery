require "test_helper"

describe AttorneyComment do
  let(:attorney_comment) { AttorneyComment.new }

  it "must be valid" do
    value(attorney_comment).must_be :valid?
  end
end
