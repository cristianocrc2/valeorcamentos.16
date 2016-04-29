require 'rails_helper'

RSpec.describe "subcategoria/index", type: :view do
  before(:each) do
    assign(:subcategoria, [
      Subcategorium.create!(
        :subcategoria => "Subcategoria",
        :ativo => 1.5,
        :categoria => nil
      ),
      Subcategorium.create!(
        :subcategoria => "Subcategoria",
        :ativo => 1.5,
        :categoria => nil
      )
    ])
  end

  it "renders a list of subcategoria" do
    render
    assert_select "tr>td", :text => "Subcategoria".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
