class JobsController < ApplicationController


  def index
  
  end

  def import
    Job.import(params[:file])
    redirect_to jobs_path, notice: "jobs added successfully"
  end

  
end
