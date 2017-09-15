require 'rails_helper'

RSpec.describe 'Weather API', type: :request do
  # initialize test data 
#  let!(:weather) { create_list(:weather, 10) }
#  let(:weather_id) { weathers.first.id }
#

  # Test suite for POST /todos
  describe 'POST /weather/city' do
    # valid payload
    let(:valid_attributes) { { city: 'Paris, fr'} }

    context 'when the request is valid' do
      before { post '/weather/city', params: valid_attributes }

      it 'calculates average temp' do
       pBody = JSON.parse(response.body) 
        expect(pBody['2017-09-17']['averages']['temp']).to be_an_instance_of(Float)
      end
      
      it 'calculates average pres' do
       pBody = JSON.parse(response.body) 
        expect(pBody['2017-09-17']['averages']['pressure']).to be_an_instance_of(Float)
      end
      
      it 'calculates average hum' do
       pBody = JSON.parse(response.body) 
        expect(pBody['2017-09-17']['averages']['humidity']).to be_an_instance_of(Float)
      end
      
      it 'calculates charts pres' do
       pBody = JSON.parse(response.body) 
        expect(pBody['2017-09-17']['charts']['pressure']['val']).to be_an_instance_of(Array)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the request is invalid' do
      before { post '/weather/city', params: { city: '' } }
      
      it 'returns status code 400' do
        expect(response).to have_http_status(400)
      end

    
    end
  end

end