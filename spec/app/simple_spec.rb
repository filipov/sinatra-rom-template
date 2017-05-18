describe 'The HelloWorld App' do
  it 'says hello' do
    get '/'
    expect(last_response).to be_ok
  end
end
