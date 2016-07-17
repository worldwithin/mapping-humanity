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
      flash[:notice] = t('admin.works.create.success')
      redirect_to admin_works_path
    else
      flash[:alert] = t('admin.works.create.error')
      render :new
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(permitted_params)
      flash[:notice] = t('admin.works.update.success')
      redirect_to admin_works_path
    else
      flash[:alert] = t('admin.works.create.error')
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
                                  :cover_image_cache, category_ids:[],
                                  work_images_attributes: [:id, :image, :image_cache, :_destroy]])
  end
end
