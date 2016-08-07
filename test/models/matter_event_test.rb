require "test_helper"

describe MatterEvent do
  let(:matter_event) { MatterEvent.new }

  it "must be valid" do
    value(matter_event).must_be :valid?
  end
end
