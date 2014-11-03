require 'rails_helper'

RSpec.describe Apple, :type => :model do
  it "has a type" do
    granny_smith = Apple.create!(:type => "granny_smith")
    expect(granny_smith.type).to eq("granny_smith")
  end

  it "fails validation without type" do
    fuji = Apple.create(:type => nil)
    expect(fuji).to_not be_valid
  end
end
