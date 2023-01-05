class GymsController < ApplicationController

    def show
        gym = find_gym
        render json: gym, status: :ok
    end

    def destroy
        gym = find_gym
        head :no_content
    end

    def index
        gyms = Gym.all
        render json: gyms, status: :ok
    end

    def update
        gym = find_gym
        gym.update!(gym_params)
        render json: gym, status: :accepted
    end

    private

    def find_gym
        Gym.find(params[:id])
    end

    def gym_params
        params.permit(:name, :address)
    end

end
