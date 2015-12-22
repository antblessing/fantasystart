require 'rails_helper'

RSpec.describe "matchups/new", type: :view do
  before(:each) do
    assign(:matchup, Matchup.new(
      :result => false
    ))
  end

  it "renders new matchup form" do
    render

    assert_select "form[action=?][method=?]", matchups_path, "post" do

      assert_select "input#matchup_result[name=?]", "matchup[result]"
    end
  end
end
