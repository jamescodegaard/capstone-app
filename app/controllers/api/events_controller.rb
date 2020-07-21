class Api::EventsController < ApplicationController
  def index
    @events = Event.all
    render "index.json.jb"
  end

  def create
    @event = Event.new(
      name: params[:name],
      date: params[:date],
      description: params[:description],
      alt_contact: params[:alt_contact],
      alt_email: params[:alt_email],
      image: params[:image],
      business_id: params[:business_id].to_i
    )
    if @event.save
      # @event_tags = []
      # @event_tags << params[:tag_1].to_i || null
      # @event_tags << params[:tag_2].to_i || null
      # @event_tags << params[:tag_3].to_i || null
      # @event_tags << params[:tag_4].to_i || null
      # @event_tags.each do |event_tag|
      #   event_tag = EventTag.create(
      #     event_id: @event.id,
      #     tag_id: event_tag
      #   )
      eval(params[:tag_ids]).each do |tag_id| # for front end - need to eliminate 'eval'
        EventTag.create(
          event_id: @event.id,
          tag_id: tag_id
        )
      end
      render "show.json.jb"
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
    render "show.json.jb"
  end

  def update
    @event = Event.find(params[:id])
    @event.name = params[:name] || @event.name
    @event.date = params[:date] || @event.date
    @event.description = params[:description] || @event.description
    @event.alt_contact = params[:alt_contact] || @event.alt_contact
    @event.alt_email = params[:alt_email] || @event.alt_email
    @event.image = params[:image] || @event.image
    if @event.save
      @event.event_tags.destroy_all
      if params[:tag_ids]
        eval(params[:tag_ids]).each do |tag_id| # for front end - need to eliminate 'eval'
          EventTag.create(
            event_id: @event.id,
            tag_id: tag_id
          )
        end
      end
      render "show.json.jb"
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: { message: "Event successfully destroyed!" }
  end

end
