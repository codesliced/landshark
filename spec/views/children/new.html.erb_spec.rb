require 'spec_helper'

describe "children/new" do
  before(:each) do
    assign(:child, stub_model(Child,
      :name => "MyString",
      :age => 1,
      :parent => nil
    ).as_new_record)
  end

  it "renders new child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", children_path, "post" do
      assert_select "input#child_name[name=?]", "child[name]"
      assert_select "input#child_age[name=?]", "child[age]"
      assert_select "input#child_parent[name=?]", "child[parent]"
    end
  end
end
