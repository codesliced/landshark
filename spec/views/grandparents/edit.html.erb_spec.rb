require 'spec_helper'

describe "grandparents/edit" do
  before(:each) do
    @grandparent = assign(:grandparent, stub_model(Grandparent,
      :name => "MyString"
    ))
  end

  it "renders the edit grandparent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grandparent_path(@grandparent), "post" do
      assert_select "input#grandparent_name[name=?]", "grandparent[name]"
    end
  end
end
