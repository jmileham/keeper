require 'rails_helper'

RSpec.describe Identity do
  it "creates when valid" do
    FactoryBot.create(:identity)
  end

  it "doesn't allow dupe SSNs" do
    first = FactoryBot.create(:identity, ssn: "000000001")
    second = FactoryBot.build(:identity, ssn: "000000001")
    expect(second).not_to be_valid
  end
end
