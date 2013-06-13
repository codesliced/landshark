require 'spec_helper'

describe "grandparents/index" do
  before(:each) do
    assign(:grandparents, [
      stub_model(Grandparent,
        :name => "Name"
      ),
      stub_model(Grandparent,
        :name => "Name"
      )
    ])
  end

  it "renders a list of grandparents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
