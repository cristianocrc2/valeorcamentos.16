require 'rails_helper'

RSpec.describe "subcategoria/edit", type: :view do
  before(:each) do
    @subcategorium = assign(:subcategorium, Subcategorium.create!(
      :subcategoria => "MyString",
      :ativo => 1.5,
      :categoria => nil
    ))
  end

  it "renders the edit subcategorium form" do
    render

    assert_select "form[action=?][method=?]", subcategorium_path(@subcategorium), "post" do

      assert_select "input#subcategorium_subcategoria[name=?]", "subcategorium[subcategoria]"

      assert_select "input#subcategorium_ativo[name=?]", "subcategorium[ativo]"

      assert_select "input#subcategorium_categoria_id[name=?]", "subcategorium[categoria_id]"
    end
  end
end
