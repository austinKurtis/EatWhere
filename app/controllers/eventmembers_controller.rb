class EventmembersController < ApplicationController
  before_action :require_login
  before_action :set_eventmember, only: [:show, :edit, :update, :destroy]

  # GET /eventmembers
  # GET /eventmembers.json
  # def index
  #   @eventmembers = Eventmember.all
  # end

  # GET /eventmembers/1
  # GET /eventmembers/1.json
  def show
  end

  # GET /eventmembers/new
  def new
    @event = Event.find( params[:event_id] )
    @eventmember = Eventmember.new({event: event})
  end

  # GET /eventmembers/1/edit
  # def edit
  # end

  # POST /eventmembers
  # POST /eventmembers.json
  def create
    @event = Event.find(params[:event_id])
    @eventmember = Eventmember.new(eventmember_params)
    # respond_to do |format|
    #   if @eventmember.save
    #     format.html { redirect_to @event }
    #     format.json { render :show, status: :created, location: @event }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @eventmember.errors, status: :unprocessable_entity }
    #   end
  end

  # # PATCH/PUT /eventmembers/1
  # # PATCH/PUT /eventmembers/1.json
  # def update
  #   respond_to do |format|
  #     if @eventmember.update(eventmember_params)
  #       format.html { redirect_to @eventmember, notice: 'Eventmember was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @eventmember }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @eventmember.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /eventmembers/1
  # DELETE /eventmembers/1.json
  def destroy
    @eventmember.destroy
    respond_to do |format|
      format.html { redirect_to event_params }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventmember
      @eventmember = Eventmember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventmember_params
      params.require(:eventmember).permit(:user_id, :event_id)
    end
end
