require 'rails_helper'

RSpec.describe Project, :type => :model do
  context "valid" do
    it "belongs to organization" do
      assc = described_class.reflect_on_association(:organization)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
