require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }

  it { should validate_presence_of(:name) }

  it { should validate_presence_of(:password) }

  it { should validate_presence_of(:email) }

  it { should have_many(:workouts).dependent(:destroy) }

  it { should have_many(:exercises) }

  it { should have_many(:sets) }


end