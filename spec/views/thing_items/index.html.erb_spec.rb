require 'rails_helper'

RSpec.describe "thing_items/index", :type => :view do
  before(:each) do
    assign(:thing_items, [
      ThingItem.create!(
        :name => "Name"
      ),
      ThingItem.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of thing_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
