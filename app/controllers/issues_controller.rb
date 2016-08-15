class IssuesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :is_owner?, only: [:edit, :update, :destroy]

  def my_issues
    @issues = current_user.issues
  end

  def index
    @issues = Issue.approved
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new(user: current_user)
  end

  def create
    @issue = Issue.new(permitted_params.merge(user: current_user))
    if @issue.save
      flash[:notice] = t('admin.issues.create.success')
      redirect_to issues_path
    else
      flash[:alert] = t('admin.issues.create.error')
      render :new
    end
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    @issue = Issue.find(params[:id])
    if @issue.update(permitted_params)
      flash[:notice] = t('admin.issues.update.success')
      redirect_to issues_path
    else
      flash[:notice] = t('admin.issues.create.error')
      render :edit
    end
  end

  def destroy
    @issue = Issue.find(params[:id])
    if @issue.destroy
      redirect_to issues_path
    else
      redirect :back
    end
  end

  protected

  def is_owner?
    unless current_user && Issue.find(params[:id]).user == current_user
      redirect_to issues_path, alert: "You don't have authorization to access this"
    end
  end

  def permitted_params
    params.require(:issue).permit([:title, :description, :link, :video, :user_id])
  end
end
