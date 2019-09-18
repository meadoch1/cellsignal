class LocationReportsController < ApplicationController
  before_action :set_location_report, only: [:show, :edit, :update, :destroy]

  # GET /location_reports
  # GET /location_reports.json
  def index
    @location_reports = LocationReport.all
  end

  # GET /location_reports/1
  # GET /location_reports/1.json
  def show
  end

  # GET /location_reports/new
  def new
    @location_report = LocationReport.new
  end

  # GET /location_reports/1/edit
  def edit
  end

  # POST /location_reports
  # POST /location_reports.json
  def create
    @location_report = LocationReport.new(location_report_params)

    respond_to do |format|
      if @location_report.save
        format.html { redirect_to @location_report, notice: 'Location report was successfully created.' }
        format.json { render :show, status: :created, location: @location_report }
      else
        format.html { render :new }
        format.json { render json: @location_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /location_reports/1
  # PATCH/PUT /location_reports/1.json
  def update
    respond_to do |format|
      if @location_report.update(location_report_params)
        format.html { redirect_to @location_report, notice: 'Location report was successfully updated.' }
        format.json { render :show, status: :ok, location: @location_report }
      else
        format.html { render :edit }
        format.json { render json: @location_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_reports/1
  # DELETE /location_reports/1.json
  def destroy
    @location_report.destroy
    respond_to do |format|
      format.html { redirect_to location_reports_url, notice: 'Location report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_report
      @location_report = LocationReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_report_params
      params.require(:location_report).permit(:speed_report_id, :hookups, :comment)
    end
end
