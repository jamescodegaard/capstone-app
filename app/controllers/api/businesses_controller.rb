class Api::BusinessesController < ApplicationController
  # before_action :authenticate_business

  def index
    @businesses = Business.all
    render 'index.json.jb'
  end

  def create
    @business = Business.new(
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
    if params[:address]
      coordinates = Geocoder.coordinates(params[:address])
      @business.latitude = coordinates[0]
      @business.longitude = coordinates[1]
    end
    if @business.save
      render "show.json.jb", status: :created
    else
      render json: { errors: @business.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @business = Business.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @business = Business.find(params[:id])
    @business.name = params[:name] || @business.name
    @business.email = params[:email] || @business.email
    @business.address = params[:address] || @business.address
    @business.phone = params[:phone] || @business.phone
    @business.website = params[:website] || @business.website
    @business.category = params[:category] || @business.category
    @business.description = params[:description] || @business.description
    @business.hours = params[:hours] || @business.hours
    @business.image = params[:image] || @business.image
    if params[:password]
      @business.password = params[:password]
      @business.password_confirmation = params[:password_confirmation]
    end
    if params[:address]
      coordinates = Geocoder.coordinates(params[:address])
      @business.latitude = coordinates[0]
      @business.longitude = coordinates[1]
    end
    if @business.save
      render "show.json.jb", status: :created
    else
      render json: { errors: business.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    render json: {message: "Business destroyed!"}
  end

end
