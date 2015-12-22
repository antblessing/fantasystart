require 'rails_helper'

RSpec.describe "matchups/edit", type: :view do
  before(:each) do
    @matchup = assign(:matchup, Matchup.create!(
      :result => false
    ))
  end

  it "renders the edit matchup form" do
    render

    assert_select "form[action=?][method=?]", matchup_path(@matchup), "post" do

      assert_select "input#matchup_result[name=?]", "matchup[result]"
    end
  end
end
