require 'spec_helper'

describe "parents/new" do
  before(:each) do
    assign(:parent, stub_model(Parent,
      :name => "MyString",
      :grandparent => nil
    ).as_new_record)
  end

  it "renders new parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parents_path, "post" do
      assert_select "input#parent_name[name=?]", "parent[name]"
      assert_select "input#parent_grandparent[name=?]", "parent[grandparent]"
    end
  end
end
