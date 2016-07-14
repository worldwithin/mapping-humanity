class Admin::PeopleController < Admin::AdminController
  before_action :authenticate_admin_user!

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(permitted_params)
    if @person.save
      flash[:notice] = t('admin.people.create.success')
      redirect_to admin_people_path
    else
      flash[:alert] = t('admin.people.create.error')
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(permitted_params)
      flash[:notice] = t('admin.people.update.success')
      redirect_to admin_people_path
    else
      flash[:notice] = t('admin.people.create.error')
      render :edit
    end
  end

  def destroy
    @person = Person.find(params[:id])
    if @person.destroy
      redirect_to admin_people_path
    else
      redirect :back
    end
  end

  protected

  def permitted_params
    params.require(:person).permit([:name, :avatar, category_ids:[]])
  end
end
