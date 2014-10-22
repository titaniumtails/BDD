require 'rails_helper'

RSpec.describe "thing_items/show", :type => :view do
  before(:each) do
    @thing_item = assign(:thing_item, ThingItem.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
