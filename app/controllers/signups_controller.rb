class SignupsController < ApplicationController
    def create
        signup = Signup.create!(signup_params)
        render json: signup.activity, status: 201
    end

    private

    def signup_params
        params.permit(:camper_id, :activity_id, :time, :activity)
    end
end