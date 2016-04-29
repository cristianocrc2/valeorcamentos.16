require 'rails_helper'

RSpec.describe "categoria/new", type: :view do
  before(:each) do
    assign(:categorium, Categorium.new(
      :categoria => "MyString",
      :ativo => false,
      :nicho => nil
    ))
  end

  it "renders new categorium form" do
    render

    assert_select "form[action=?][method=?]", categoria_path, "post" do

      assert_select "input#categorium_categoria[name=?]", "categorium[categoria]"

      assert_select "input#categorium_ativo[name=?]", "categorium[ativo]"

      assert_select "input#categorium_nicho_id[name=?]", "categorium[nicho_id]"
    end
  end
end
