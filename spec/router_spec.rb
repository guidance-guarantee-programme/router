RSpec.describe 'router' do
  it 'redirects /' do
    get '/'
    expect(last_response.headers['Location']).to eq('https://www.pensionwise.gov.uk')
  end

  it 'redirects /register' do
    get '/register'
    expect(last_response.headers['Location']).to eq('https://www.pensionwise.gov.uk/appointments')
  end
end
