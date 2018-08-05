class AbductionReportsController < ApplicationController
  before_action :set_abduction_report, only: [:show, :update, :destroy]

  # GET /abduction_reports
  def index
    @abduction_reports = AbductionReport.all

    render json: @abduction_reports
  end

  # GET /abduction_reports/1
  def show
    render json: @abduction_report
  end

  # POST /abduction_reports
  def create
    @abduction_report = AbductionReport.new(abduction_report_params)

    if @abduction_report.save
      render json: @abduction_report, status: :created, location: @abduction_report
    else
      render json: @abduction_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /abduction_reports/1
  def update
    if @abduction_report.update(abduction_report_params)
      render json: @abduction_report
    else
      render json: @abduction_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /abduction_reports/1
  def destroy
    @abduction_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abduction_report
      @abduction_report = AbductionReport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def abduction_report_params
      params.require(:abduction_report).permit(:amount)
    end
end
