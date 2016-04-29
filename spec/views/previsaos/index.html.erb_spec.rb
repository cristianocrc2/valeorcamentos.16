require 'rails_helper'

RSpec.describe "previsaos/index", type: :view do
  before(:each) do
    assign(:previsaos, [
      Previsao.create!(
        :previsao => "Previsao",
        :ativo => false,
        :frequencia => nil
      ),
      Previsao.create!(
        :previsao => "Previsao",
        :ativo => false,
        :frequencia => nil
      )
    ])
  end

  it "renders a list of previsaos" do
    render
    assert_select "tr>td", :text => "Previsao".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
