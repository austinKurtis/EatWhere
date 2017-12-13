class RestmembersController < ApplicationController
  before_action :require_login
  before_action :set_restmember, only: [:show, :edit, :update, :destroy]

  # GET /restmembers
  # GET /restmembers.json
  def index
    @restmembers = Restmember.all
  end

  # GET /restmembers/1
  # GET /restmembers/1.json
  def show
    @restmembers = Restmember.find(params[:event_id])
  end

  # GET /restmembers/new

  def new
    @event = Event.find(params[:event_id])
    @restmember = Restmember.new({event: event})
  end

  # GET /restmembers/1/edit
  def edit
  end

  # POST /restmembers
  # POST /restmembers.json

  def create
    @event = Event.find(params[:event_id])
    @restmember = Restmember.new(restmember_params)
    respond_to do |format|
      if @restmember.save
        format.html { redirect_to events_path }
        format.json { render :show, status: :created, location: @restmember }
      else
        format.html { render :new }
        format.json { render json: @restmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restmembers/1
  # PATCH/PUT /restmembers/1.json
  # def update
  #   respond_to do |format|
  #     if @restmember.update(restmember_params)
  #       format.html { redirect_to @restmember, notice: 'Restmember was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @restmember }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @restmember.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /restmembers/1
  # DELETE /restmembers/1.json
  def destroy
    @restmember.destroy
    respond_to do |format|
      format.html { redirect_to restmembers_url, notice: 'Restmember was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restmember
      @restmember = Restmember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restmember_params
      params.require(:restmember).permit(:restaurant_id, :event_id, :user_id)
    end
end
