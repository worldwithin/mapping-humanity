class Admin::IssuesController < Admin::AdminController
  before_action :authenticate_admin_user!

  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(permitted_params)
    if @issue.save
      flash[:notice] = t('admin.issues.create.success')
      redirect_to admin_issues_path
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
      redirect_to admin_issues_path
    else
      flash[:notice] = t('admin.issues.create.error')
      render :edit
    end
  end

  def destroy
    @issue = Issue.find(params[:id])
    if @issue.destroy
      redirect_to admin_issues_path
    else
      redirect :back
    end
  end

  protected

  def permitted_params
    params.require(:issue).permit([:approved, :title, :description, :link, :video, :user_id])
  end
end
