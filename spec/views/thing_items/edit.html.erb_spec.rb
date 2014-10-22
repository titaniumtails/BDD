require 'rails_helper'

RSpec.describe "thing_items/edit", :type => :view do
  before(:each) do
    @thing_item = assign(:thing_item, ThingItem.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit thing_item form" do
    render

    assert_select "form[action=?][method=?]", thing_item_path(@thing_item), "post" do

      assert_select "input#thing_item_name[name=?]", "thing_item[name]"
    end
  end
end
