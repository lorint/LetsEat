class PhoneReservationsController < ApplicationController
  before_action :set_phone_reservation, only: [:show, :edit, :update, :destroy]

  # GET /phone_reservations
  # GET /phone_reservations.json
  def index
    @phone_reservations = PhoneReservation.all
  end

  # GET /phone_reservations/1
  # GET /phone_reservations/1.json
  def show
  end

  # GET /phone_reservations/new
  def new
    @phone_reservation = PhoneReservation.new
  end

  # GET /phone_reservations/1/edit
  def edit
  end

  # POST /phone_reservations
  # POST /phone_reservations.json
  def create
    @phone_reservation = PhoneReservation.new(phone_reservation_params)

    respond_to do |format|
      if @phone_reservation.save
        format.html { redirect_to @phone_reservation, notice: 'Phone reservation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @phone_reservation }
      else
        format.html { render action: 'new' }
        format.json { render json: @phone_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_reservations/1
  # PATCH/PUT /phone_reservations/1.json
  def update
    respond_to do |format|
      if @phone_reservation.update(phone_reservation_params)
        format.html { redirect_to @phone_reservation, notice: 'Phone reservation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @phone_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_reservations/1
  # DELETE /phone_reservations/1.json
  def destroy
    @phone_reservation.destroy
    respond_to do |format|
      format.html { redirect_to phone_reservations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_reservation
      @phone_reservation = PhoneReservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_reservation_params
      params.require(:phone_reservation).permit(:res_time, :name, :num_people, :restaurant_id, :reservable_type, :phone_num)
    end
end
