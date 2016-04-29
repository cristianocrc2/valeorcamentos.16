require 'rails_helper'

RSpec.describe "nichos/edit", type: :view do
  before(:each) do
    @nicho = assign(:nicho, Nicho.create!(
      :nicho => "MyString",
      :ativo => false,
      :categoria => nil
    ))
  end

  it "renders the edit nicho form" do
    render

    assert_select "form[action=?][method=?]", nicho_path(@nicho), "post" do

      assert_select "input#nicho_nicho[name=?]", "nicho[nicho]"

      assert_select "input#nicho_ativo[name=?]", "nicho[ativo]"

      assert_select "input#nicho_categoria_id[name=?]", "nicho[categoria_id]"
    end
  end
end
