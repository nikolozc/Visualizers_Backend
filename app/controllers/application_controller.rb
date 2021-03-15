class ApplicationController < ActionController::API

    def authenticate
        auth_header = request.headers["Authorization"]
        auth_header[5] = " "
        token = auth_header.split.last
        payload = JWT.decode(token, 'afd253f6c344979c5b57ec763e8597fc74f4fef103355d52d91da03baa3a78242d0a94b8d91041bbed8824115c3c7ff941af129d94a5b09ea299e2fb9ad4f928', true, {algorithm: 'HS256'})[0]
        @current_user = User.find_by(id: payload["user_id"])
    end

end
