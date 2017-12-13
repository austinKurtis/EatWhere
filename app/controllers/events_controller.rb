class EventsController < ApplicationController
  before_action :require_login
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    # @events = Event.where(:event_time > Time.now)
  end

  # GET /events/1
  # GET /events/1.json
  def show

    if current_user.restaurants.nil?
      @msg = "Please add a restaurant to your profile?"
    else
      @restaurants = current_user.restaurants
    end
    
    @chosen = Restaurant.joins('INNER JOIN events INNER JOIN restmembers WHERE events.id = restmembers.event_id AND restaurants.id = restmembers.restaurant_id AND events.id = ', params[:id])
    @random_choose = @chosen.order('RANDOM()').first
    @winner = Restaurant.joins('INNER JOIN events WHERE events.event_winner = restaurants.id AND events.id = ', params[:id])
    
    @next = puts "****next****"
    # @has_picked = Restmember.first('FROM restmembers WHERE events.id = ', params[:id])

    # @selectmade = Restmember.joins('INNER JOIN events WHERE', current_user == ' restmembers.user_id AND restmembers.event_id = ', params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
    @event.eventmembers.build
    @event.restmembers.build
  end

  # GET /events/1/edit
  def edit
    @event.eventmembers.build
  end

  # POST /events
  # POST /events.json
  def create

    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end

    
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_path }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.eventmembers.build
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_path }
      format.json { head :no_content }
    end
  end

  def self.restmembers
    @event = event_params[:id]
    # @restmembers = Restmember.where('event_id ==', a, 'AND user_id ==', b).count
    # @restmembers = Restmember.where('event_id == 20 AND user_id == 1').count

    puts @event
    
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:event_name, :event_location, :event_time, :event_desc, :event_winner, :user_id, :event_creator, :restaurant_id,
                                    eventmembers_attributes:[:user_id, :event_id],
                                    restmembers_attributes:[:event_id, :user_id, :restaurant_id])      
    end
end
