require 'rails_helper'

RSpec.describe "thing_items/new", :type => :view do
  before(:each) do
    assign(:thing_item, ThingItem.new(
      :name => "MyString"
    ))
  end

  it "renders new thing_item form" do
    render

    assert_select "form[action=?][method=?]", thing_items_path, "post" do

      assert_select "input#thing_item_name[name=?]", "thing_item[name]"
    end
  end
end
