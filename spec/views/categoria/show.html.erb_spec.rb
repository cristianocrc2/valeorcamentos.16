require 'rails_helper'

RSpec.describe "categoria/show", type: :view do
  before(:each) do
    @categorium = assign(:categorium, Categorium.create!(
      :categoria => "Categoria",
      :ativo => false,
      :nicho => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Categoria/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
