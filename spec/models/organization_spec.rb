require 'rails_helper'

RSpec.describe Organization, :type => :model do
  context "valid" do
    it "has many projects" do
      assc = described_class.reflect_on_association(:projects)
      expect(assc.macro).to eq :has_many
    end

    it "has name" do
      expect(Organization.new(name: 'Organization name')).to be_valid
    end
  end
  context "invalid" do
    it "is invalid without a title" do
      expect(Organization.new(name: '')).to_not be_valid
    end
  end
end
