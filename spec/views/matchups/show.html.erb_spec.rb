require 'rails_helper'

RSpec.describe "matchups/show", type: :view do
  before(:each) do
    @matchup = assign(:matchup, Matchup.create!(
      :result => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
