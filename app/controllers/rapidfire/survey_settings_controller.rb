module Rapidfire
  class SurveySettingsController < Rapidfire::ApplicationController
    before_filter :authenticate_administrator!

    def new
      @survey_setting = SurveySetting.new
    end

    def edit
      @survey_setting = SurveySetting.find(params[:id])
    end
    
    # In this case I will not be returning to the index of Survey_Setting,
    # since there is no index of Survey_Setting
    def create
      @survey_setting = SurveySetting.new(survey_setting_params)
      if @survey_setting.save
        respond_to do |format|
          format.html { redirect_to surveys_path }
          format.js
        end
      else
        respond_to do |format|
          format.html { render :new }
          format.js
        end
      end
    end

    def update
      @survey_setting = SurveySetting.find(params[:id])
      
      if @survey_setting.update(survey_setting_params)
        redirect_to surveys_path, notice: 'Survey setting was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @survey_setting.destroy
      redirect_to surveys_path, notice: 'Survey setting was successfully destroyed.'
    end

    private
      def set_survey_setting
        @survey_setting = SurveySetting.find(params[:id])
      end

      def survey_setting_params
        params.require(:survey_setting).permit(:title)
      end
  end
end
