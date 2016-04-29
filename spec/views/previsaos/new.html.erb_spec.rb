require 'rails_helper'

RSpec.describe "previsaos/new", type: :view do
  before(:each) do
    assign(:previsao, Previsao.new(
      :previsao => "MyString",
      :ativo => false,
      :frequencia => nil
    ))
  end

  it "renders new previsao form" do
    render

    assert_select "form[action=?][method=?]", previsaos_path, "post" do

      assert_select "input#previsao_previsao[name=?]", "previsao[previsao]"

      assert_select "input#previsao_ativo[name=?]", "previsao[ativo]"

      assert_select "input#previsao_frequencia_id[name=?]", "previsao[frequencia_id]"
    end
  end
end
