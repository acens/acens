class SurveysController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def new
    @survey = Survey.new
  end

  def index
    @inscritos = Survey.all.order(survey_option_id: :asc, name: :asc)

    respond_to do |format|
      format.html
      format.csv { send_data @inscritos.to_csv, filename: "inscritos-#{Date.today}.csv" }
    end
  end

  def create
    @survey = Survey.new survey_params
    if @survey.save
      redirect_to root_path, notice: "Obrigado #{@survey.first_name} por participar! Entraremos em contato!"
    else
      render action: :new
    end
  end

  private

    def survey_params
      params.require(:survey).permit(:name, :email, :registration, :survey_option_id)
    end
end
