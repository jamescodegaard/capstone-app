class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_business
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        Business.find_by(id: decoded_token[0]["business_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_business

  def authenticate_business
    unless current_business
      render json: {}, status: :unauthorized
    end
  end
end
