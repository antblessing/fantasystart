require 'rails_helper'

RSpec.describe "matchups/index", type: :view do
  before(:each) do
    assign(:matchups, [
      Matchup.create!(
        :result => false
      ),
      Matchup.create!(
        :result => false
      )
    ])
  end

  it "renders a list of matchups" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
