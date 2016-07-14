class Admin::WorksController < Admin::AdminController
  before_action :authenticate_admin_user!

  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(permitted_params)
    if @work.save
      flash[:notice] = t('admin.work.create.success')
      redirect_to admin_works_path
    else
      flash[:alert] = t('admin.work.create.error')
      render :new
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(permitted_params)
      flash[:notice] = t('admin.work.update.success')
      redirect_to admin_works_path
    else
      flash[:notice] = t('admin.work.create.error')
      render :edit
    end
  end

  def destroy
    @work = Work.find(params[:id])
    if @work.destroy
      redirect_to admin_works_path
    else
      redirect :back
    end
  end

  protected

  def permitted_params
    params.require(:work).permit([:name, :description, :cover_image, :raised_money,
                                  category_ids:[]])
  end
end
