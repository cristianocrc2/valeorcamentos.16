require 'rails_helper'

RSpec.describe "frequencia/index", type: :view do
  before(:each) do
    assign(:frequencia, [
      Frequencium.create!(
        :frequencia => "Frequencia",
        :ativo => false,
        :subcategoria => nil
      ),
      Frequencium.create!(
        :frequencia => "Frequencia",
        :ativo => false,
        :subcategoria => nil
      )
    ])
  end

  it "renders a list of frequencia" do
    render
    assert_select "tr>td", :text => "Frequencia".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
