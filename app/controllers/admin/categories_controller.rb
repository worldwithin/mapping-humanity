class Admin::CategoriesController < Admin::AdminController
  before_action :authenticate_admin_user!

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(permitted_params)
    if @category.save
      flash[:notice] = t('admin.categories.create.success')
      redirect_to admin_categories_path
    else
      flash[:alert] = t('admin.categories.create.error')
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(permitted_params)
      flash[:notice] = t('admin.categories.update.success')
      redirect_to admin_categories_path
    else
      flash[:notice] = t('admin.categories.create.error')
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to admin_categories_path
    else
      redirect :back
    end
  end

  protected

  def permitted_params
    params.require(:category).permit([:name, :people, :works])
  end
end
