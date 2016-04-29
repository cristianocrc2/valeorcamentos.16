require 'rails_helper'

RSpec.describe "categoria/edit", type: :view do
  before(:each) do
    @categorium = assign(:categorium, Categorium.create!(
      :categoria => "MyString",
      :ativo => false,
      :nicho => nil
    ))
  end

  it "renders the edit categorium form" do
    render

    assert_select "form[action=?][method=?]", categorium_path(@categorium), "post" do

      assert_select "input#categorium_categoria[name=?]", "categorium[categoria]"

      assert_select "input#categorium_ativo[name=?]", "categorium[ativo]"

      assert_select "input#categorium_nicho_id[name=?]", "categorium[nicho_id]"
    end
  end
end
