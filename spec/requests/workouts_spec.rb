# require 'rails_helper'
#
# RSpec.describe "Workouts API", type: :request do
#
#   let(:user) { create(:user_with_workouts) }
#   let(:workout_id) { user.workouts.first.id }
#
#   describe "GET /users/:id/workouts" do
#     before { get "/users/#{user.id}/workouts" }
#
#     it 'returns workouts' do
#       expect(json).not_to be_empty
#       expect(json.size).to eq(10)
#     end
#
#     it 'returns status code 200' do
#       expect(response).to have_http_status(200)
#     end
#   end
#
#   describe 'GET /users/:user_id/workouts/:id' do
#     before { get "/users/#{user.id}/workouts/#{workout_id}"}
#
#     context 'when the record exists' do
#       it 'returns the workout' do
#         expect(json).not_to be_empty
#         expect(json['workout_id']).to eq(workout_id)
#       end
#
#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end
#
#     context 'when the record does not exist' do
#       let(:workout_id) { 100 }
#
#       it 'returns status code 404' do
#         expect(response).to have_http_status(404)
#       end
#
#       it 'returns a not found message' do
#         expect(response.body).to match(/Couldn't find Workout/)
#       end
#     end
#   end
#
#   describe 'POST /workouts' do
#     let(:valid_attributes) { {user: user} }
#
#     context 'when the request is valid' do
#       before { post "/users/#{user.id}/workouts", params: valid_attributes}
#
#       it 'creates a workout' do
#         expect(json['workout_id']).to eq(Workout.last.id)
#       end
#
#       it 'returns status code 201' do
#         expect(repsonse).to have_http_status(201)
#       end
#
#       context 'when the request is invalid' do
#         before { post "/users/#{user.id}/workouts", params: { user: "-1"}}
#
#         it 'returns status code 422' do
#           expect(response).to have_http_status(422)
#         end
#
#         it 'returns a validation failture message' do
#           expect(response.body).to match(/Validation failed: User_id can't be blank/)
#         end
#       end
#     end
#   end
# end
