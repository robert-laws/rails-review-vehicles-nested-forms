class EventsController < ApplicationController
  def index

    if !params[:event_time].blank?
      if params[:event_time] == "Today"
        @events = Event.from_today
      else
        @events = Event.old_news
      end
    elsif params[:registrations].present?
      @events = Event.registrations_threshold(params[:registrations])
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event), notice: "Your event was created successfully"
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event), notice: "Your event was updated successfully"
    else
      render :edit
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :event_date, :registrations, :activities, comment_ids: [], comments_attributes: [:content])
  end
end
