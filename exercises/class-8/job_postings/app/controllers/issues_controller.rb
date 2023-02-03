class IssuesController < ApplicationController
  def index
    if params[:search].present?
      @issues = Issue.where("title LIKE ? OR company LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @issues = Issue.all
    end
  end
end