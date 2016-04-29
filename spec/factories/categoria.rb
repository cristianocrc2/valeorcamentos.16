FactoryGirl.define do
  factory :categorium, class: 'Categoria' do
    categoria "MyString"
    ativo false
    nicho nil
  end
end
