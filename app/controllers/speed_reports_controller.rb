class SpeedReportsController < ApplicationController
  before_action :set_speed_report, only: [:show, :edit, :update, :destroy]

  # GET /speed_reports
  # GET /speed_reports.json
  def index
    @speed_reports = SpeedReport.all
  end

  # GET /speed_reports/1
  # GET /speed_reports/1.json
  def show
  end

  # GET /speed_reports/new
  def new
    @speed_report = SpeedReport.new
  end

  # GET /speed_reports/1/edit
  def edit
  end

  # POST /speed_reports
  # POST /speed_reports.json
  def create
    @speed_report = SpeedReport.new(speed_report_params)

    respond_to do |format|
      if @speed_report.save
        format.html { redirect_to @speed_report, notice: 'Speed report was successfully created.' }
        format.json { render :show, status: :created, location: @speed_report }
      else
        format.html { render :new }
        format.json { render json: @speed_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speed_reports/1
  # PATCH/PUT /speed_reports/1.json
  def update
    respond_to do |format|
      if @speed_report.update(speed_report_params)
        format.html { redirect_to @speed_report, notice: 'Speed report was successfully updated.' }
        format.json { render :show, status: :ok, location: @speed_report }
      else
        format.html { render :edit }
        format.json { render json: @speed_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speed_reports/1
  # DELETE /speed_reports/1.json
  def destroy
    @speed_report.destroy
    respond_to do |format|
      format.html { redirect_to speed_reports_url, notice: 'Speed report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speed_report
      @speed_report = SpeedReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speed_report_params
      params.require(:speed_report).permit(:test_dt, :location_id, :site_name, :carrier_id, :device_name, :ping_ms, :download_mb, :upload_mb, :booster, :external_antenna, :comment)
    end
end
