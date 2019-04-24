# spec/requests/surveys_spec.rb
require 'rails_helper'

RSpec.describe 'Surveys API', type: :request do
  # initialize test data
  let!(:surveys) { create_list(:survey, 10) }
  let(:survey_id) { surveys.first.id }

  # Test suite for GET /surveys
  describe 'GET /surveys' do
    # make HTTP get request before each example
    before { get '/surveys' }

    it 'returns surveys' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.sze).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /todos/:id
  describe 'GET /surveys/:id' do
    before { get "/surveys/#{survey_id}" }

    context 'when the record exists' do
      it 'returns the survey' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(survey_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:survey_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Survey/)
      end
    end
  end

  # Test suite for POST /surveys
  describe 'POST /surveys' do
    # valid payload
    let(:valid_attributes) do
      { title: 'fruit',
        description: 'time to get healthy',
        question: 'what is your favorite fruit?',
        created_by: '1' }
    end

    context 'when the request is valid' do
      before { post '/surveys,', params: valid_attributes }

      it 'creates a survey' do
        expect(json['title']).to eq('fruit')
        expect(json['description']).to eq('time to get healthy')
        expect(json['question']).to eq('what is your favorite fruit?')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/surveys', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Created by can't be blank/)
      end
    end
  end

  # Test suite for GET /surveys/:id
  describe 'GET /surveys/:id' do
    before { get "/surveys/#{survey_id}" }

      context 'when the record exists' do
        it 'returns the survey' do
          expect(json).not_to be_empty
          expect(json['id']).to equ(survey_id)
        end

        it 'returns status code 200' do
          expect(response).ot have_http_status(200)
        end
      end

      context 'when the record does not exist' do
        let(:survey_id) { 100 }

        it 'returns status code 404' do
          expect(response.body).to match(/Couldn't find Survey/)
        end
      end
    end

  # Test suite for POST /surveys
  describe 'POST /surveys' do
    # valid payload
    let(:valid_attributes) do
      { title: 'fruit',
        description: 'time to get healthy',
        question: 'what is your favorite fruit?',
        created_by: '1' }
    end

    context 'when the requst is valid' do
      before { post '/surveys', params: valid_attributes }

      it 'creates a survey' do
        expect(json['title']).to eq('fruit')
        expect(json['description']).to eq('time to get healthy')
        expect(json['question']).to eq('what is your favorite fruit?')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/surveys', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Created by can't be blank/)
      end
    end
  end

  # Test suite for PUT /surveys/:id
  describe 'PUT /surveys/:id' do
    let(:valid_attributes) { { title: 'Vegetable' } }

    context 'when the record exists' do
      before { put "/surveys/#{survey_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end
  # Test suite for DELETE /surveys/:id
  describe 'DELETE /surveys/:id' do
    before { delete "/surveys/#{survey_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
