require 'rails_helper'

RSpec.describe "frequencia/show", type: :view do
  before(:each) do
    @frequencium = assign(:frequencium, Frequencium.create!(
      :frequencia => "Frequencia",
      :ativo => false,
      :subcategoria => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Frequencia/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
