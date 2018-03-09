require 'rails_helper'

RSpec.describe Project, :type => :model do
  context "valid" do
    it "belongs to organization" do
      assc = described_class.reflect_on_association(:organization)
      expect(assc.macro).to eq :belongs_to
    end

    it "has many events" do
      assc = described_class.reflect_on_association(:event)
      expect(assc.macro).to eq :has_many
    end

    it "has title" do
      organization = Organization.new(name: 'Organization name')
      expect(Project.new(title: 'My project', organization: organization)).to be_valid
    end
  end
  context "invalid" do
    it "is invalid without a title" do
      expect(Project.new(title: '')).to_not be_valid
    end
  end
end
