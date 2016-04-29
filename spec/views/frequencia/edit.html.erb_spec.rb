require 'rails_helper'

RSpec.describe "frequencia/edit", type: :view do
  before(:each) do
    @frequencium = assign(:frequencium, Frequencium.create!(
      :frequencia => "MyString",
      :ativo => false,
      :subcategoria => nil
    ))
  end

  it "renders the edit frequencium form" do
    render

    assert_select "form[action=?][method=?]", frequencium_path(@frequencium), "post" do

      assert_select "input#frequencium_frequencia[name=?]", "frequencium[frequencia]"

      assert_select "input#frequencium_ativo[name=?]", "frequencium[ativo]"

      assert_select "input#frequencium_subcategoria_id[name=?]", "frequencium[subcategoria_id]"
    end
  end
end
