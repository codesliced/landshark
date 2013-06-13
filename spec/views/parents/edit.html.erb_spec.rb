require 'spec_helper'

describe "parents/edit" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent,
      :name => "MyString",
      :grandparent => nil
    ))
  end

  it "renders the edit parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parent_path(@parent), "post" do
      assert_select "input#parent_name[name=?]", "parent[name]"
      assert_select "input#parent_grandparent[name=?]", "parent[grandparent]"
    end
  end
end
