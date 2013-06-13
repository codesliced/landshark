require 'spec_helper'

describe "grandparents/show" do
  before(:each) do
    @grandparent = assign(:grandparent, stub_model(Grandparent,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
