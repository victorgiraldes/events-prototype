class Api::V1::ReportsController < ApplicationController

  respond_to :json

  def index
    reports = Report.all
    render json: reports, status: 200
  end

  def create
    report = Report.new(report_params)
    if report.save
      render json: report, status: 201
    else
      render json: { errors: report.errors }, status: 422
    end
  end



  private

  def report_params
    params.permit(:user_id, :comment_id)
  end

end
