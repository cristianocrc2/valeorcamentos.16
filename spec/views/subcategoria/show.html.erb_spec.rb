require 'rails_helper'

RSpec.describe "subcategoria/show", type: :view do
  before(:each) do
    @subcategorium = assign(:subcategorium, Subcategorium.create!(
      :subcategoria => "Subcategoria",
      :ativo => 1.5,
      :categoria => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Subcategoria/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
