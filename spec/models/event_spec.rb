require 'rails_helper'

RSpec.describe Event, :type => :model do
  context "valid" do
    it "belongs to a project" do
      assc = described_class.reflect_on_association(:project)
      expect(assc.macro).to eq :belongs_to
    end

    it "has duration and size" do
      project = Project.new(title: 'test')
      expect(Event.new(duration: 33.6, size: 3.36, project: project)).to be_valid
    end
  end
  context "invalid" do
    it "is invalid without a duration" do
      expect(Event.new(duration: '', size: 3.36)).to_not be_valid
    end

    it "is invalid without a size" do
      expect(Event.new(duration: 33.6, size: '')).to_not be_valid
    end
  end
end
