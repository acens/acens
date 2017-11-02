class SurveysController < ApplicationController
  def new
    @survey = Survey.new
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
