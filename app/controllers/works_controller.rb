class WorksController < ApplicationController
  before_action :set_categories_sidenav

  def index
    if params[:category].present?
      @works = Work.by_category(params[:category])
    else
      @works = Work.all
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  protected

  def set_categories_sidenav
    @categories = Category.where(works: true)
  end
end
