require 'rails_helper'

RSpec.describe ApplesController, :type => :controller do

describe "GET show" do
  it "renders the apple show page when user clicks on the apple name" do
    apple = Apple.create(:type => "honeycrisp", :id => "1")
    get :show, :id => 1
    expect(response).to render_template("show")
  end
end

end