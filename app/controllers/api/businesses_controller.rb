class Api::BusinessesController < ApplicationController
  # before_action :authenticate_business

  def index
    @businesses = Business.all
    render 'index.json.jb'
  end

  def create
    business = Business.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      address: params[:address],
      phone: params[:phone],
      website: params[:website],
      category: params[:category],
      description: params[:description],
      hours: params[:hours],
      image: params[:image]
    )
    if business.save
      render json: { message: "Business created successfully" }, status: :created
    else
      render json: { errors: business.errors.full_messages }, status: :bad_request
    end

  end

end
