require 'rails_helper'

RSpec.describe "Sets API", type: :request do

  let(:user) { create(:user_with_workouts) }
  let(:exercise_id) { user.exercises.first.id }
  let(:exercise) { user.exercises.first }
  let(:set_id) { user.sets.first.id }

  describe 'POST /batches' do

    context 'when the request is valid' do
      before { post "/exercises/#{exercise_id}/batches" }

      it 'creates a set' do
        expect(exercise.sets.count).to eq(4)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end

      context 'when the request is invalid' do
        before { post "/exercises/#{exercise_id}/batches" }

        xit 'returns status code 422' do
          expect(response).to have_http_status(422)
        end

        xit 'returns a validation failture message' do
          expect(response.body).to match(/Validation failed: Name can't be blank/)
        end
      end
    end
  end

  describe "DELETE /batches/:id" do
    before { delete "/batches/#{set_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
