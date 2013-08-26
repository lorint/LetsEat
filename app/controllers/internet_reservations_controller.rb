class InternetReservationsController < ApplicationController
  before_action :set_internet_reservation, only: [:show, :edit, :update, :destroy]

  # GET /internet_reservations
  # GET /internet_reservations.json
  def index
    @internet_reservations = InternetReservation.all
  end

  # GET /internet_reservations/1
  # GET /internet_reservations/1.json
  def show
  end

  # GET /internet_reservations/new
  def new
    @internet_reservation = InternetReservation.new
  end

  # GET /internet_reservations/1/edit
  def edit
  end

  # POST /internet_reservations
  # POST /internet_reservations.json
  def create
    @internet_reservation = InternetReservation.new(internet_reservation_params)

    respond_to do |format|
      if @internet_reservation.save
        format.html { redirect_to @internet_reservation, notice: 'Internet reservation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @internet_reservation }
      else
        format.html { render action: 'new' }
        format.json { render json: @internet_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internet_reservations/1
  # PATCH/PUT /internet_reservations/1.json
  def update
    respond_to do |format|
      if @internet_reservation.update(internet_reservation_params)
        format.html { redirect_to @internet_reservation, notice: 'Internet reservation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @internet_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internet_reservations/1
  # DELETE /internet_reservations/1.json
  def destroy
    @internet_reservation.destroy
    respond_to do |format|
      format.html { redirect_to internet_reservations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internet_reservation
      @internet_reservation = InternetReservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internet_reservation_params
      params.require(:internet_reservation).permit(:res_time, :name, :num_people, :restaurant_id, :reservable_type, :phone_num, :source_website, :time_reserved)
    end
end
