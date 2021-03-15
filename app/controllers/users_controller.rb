class UsersController < ApplicationController
    before_action :authenticate, only: [:show]

    def login
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            token = JWT.encode({user_id: user.id}, 'afd253f6c344979c5b57ec763e8597fc74f4fef103355d52d91da03baa3a78242d0a94b8d91041bbed8824115c3c7ff941af129d94a5b09ea299e2fb9ad4f928', 'HS256')
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {errors:["Invalid name or password"]}, status: :unauthorized
        end
    end

    def signup
        user = User.create(user_params)
        if user.valid? 
            token = JWT.encode({user_id: user.id}, 'afd253f6c344979c5b57ec763e8597fc74f4fef103355d52d91da03baa3a78242d0a94b8d91041bbed8824115c3c7ff941af129d94a5b09ea299e2fb9ad4f928', 'HS256')
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {errors: user.errors.full_messages}, status: :unauthorized
        end
    end

    def show
        render json: @current_user
    end


    def index
        users = User.all
        render json: users, status: 200
    end

    private
    def user_params
    params.permit(:name, :password)
    end

end
