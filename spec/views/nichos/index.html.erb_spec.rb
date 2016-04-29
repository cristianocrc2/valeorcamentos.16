require 'rails_helper'

RSpec.describe "nichos/index", type: :view do
  before(:each) do
    assign(:nichos, [
      Nicho.create!(
        :nicho => "Nicho",
        :ativo => false,
        :categoria => nil
      ),
      Nicho.create!(
        :nicho => "Nicho",
        :ativo => false,
        :categoria => nil
      )
    ])
  end

  it "renders a list of nichos" do
    render
    assert_select "tr>td", :text => "Nicho".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
