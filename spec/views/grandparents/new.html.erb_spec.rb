require 'spec_helper'

describe "grandparents/new" do
  before(:each) do
    assign(:grandparent, stub_model(Grandparent,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new grandparent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grandparents_path, "post" do
      assert_select "input#grandparent_name[name=?]", "grandparent[name]"
    end
  end
end
