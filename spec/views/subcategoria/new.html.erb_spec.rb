require 'rails_helper'

RSpec.describe "subcategoria/new", type: :view do
  before(:each) do
    assign(:subcategorium, Subcategorium.new(
      :subcategoria => "MyString",
      :ativo => 1.5,
      :categoria => nil
    ))
  end

  it "renders new subcategorium form" do
    render

    assert_select "form[action=?][method=?]", subcategoria_path, "post" do

      assert_select "input#subcategorium_subcategoria[name=?]", "subcategorium[subcategoria]"

      assert_select "input#subcategorium_ativo[name=?]", "subcategorium[ativo]"

      assert_select "input#subcategorium_categoria_id[name=?]", "subcategorium[categoria_id]"
    end
  end
end
