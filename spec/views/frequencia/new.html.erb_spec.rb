require 'rails_helper'

RSpec.describe "frequencia/new", type: :view do
  before(:each) do
    assign(:frequencium, Frequencium.new(
      :frequencia => "MyString",
      :ativo => false,
      :subcategoria => nil
    ))
  end

  it "renders new frequencium form" do
    render

    assert_select "form[action=?][method=?]", frequencia_path, "post" do

      assert_select "input#frequencium_frequencia[name=?]", "frequencium[frequencia]"

      assert_select "input#frequencium_ativo[name=?]", "frequencium[ativo]"

      assert_select "input#frequencium_subcategoria_id[name=?]", "frequencium[subcategoria_id]"
    end
  end
end
