require "test_helper"

describe LawOfficeComment do
  let(:law_office_comment) { LawOfficeComment.new }

  it "must be valid" do
    value(law_office_comment).must_be :valid?
  end
end
