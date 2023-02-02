class SurveyController < ApplicationController
  def rating
  end

  def multiple_choice_questions
    session[:rating] = params[:rating]
  end

  def open_ended_feedback
    session[:quality_rating] = params[:quality_rating]
    session[:recommendation_rating] = params[:recommendation_rating]
  end

  def end
    @rating = session[:rating]
    @quality_rating = session[:quality_rating]
    @recommendation_rating = session[:recommendation_rating]
    @feedback = params[:feedback]
  end
end