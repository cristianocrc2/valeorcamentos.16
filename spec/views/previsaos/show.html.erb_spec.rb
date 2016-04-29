require 'rails_helper'

RSpec.describe "previsaos/show", type: :view do
  before(:each) do
    @previsao = assign(:previsao, Previsao.create!(
      :previsao => "Previsao",
      :ativo => false,
      :frequencia => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Previsao/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
