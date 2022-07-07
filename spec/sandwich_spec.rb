RSpec.describe 'An ideal sandwich' do 
  it 'is delicious' do
    sandwich = sandwich.new('delicious',[])

    taste = sandwich.taste

    expect(taste).to eq('delicious')
  end
end 
