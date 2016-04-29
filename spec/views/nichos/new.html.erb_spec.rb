require 'rails_helper'

RSpec.describe "nichos/new", type: :view do
  before(:each) do
    assign(:nicho, Nicho.new(
      :nicho => "MyString",
      :ativo => false,
      :categoria => nil
    ))
  end

  it "renders new nicho form" do
    render

    assert_select "form[action=?][method=?]", nichos_path, "post" do

      assert_select "input#nicho_nicho[name=?]", "nicho[nicho]"

      assert_select "input#nicho_ativo[name=?]", "nicho[ativo]"

      assert_select "input#nicho_categoria_id[name=?]", "nicho[categoria_id]"
    end
  end
end
