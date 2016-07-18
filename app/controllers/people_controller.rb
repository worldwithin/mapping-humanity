class PeopleController < ApplicationController
  before_action :set_categories_sidenav

  def index
    if params[:category].present?
      @people = Person.by_category(params[:category])
    else
      @people = Person.all
    end
  end

  protected

  def set_categories_sidenav
    @categories = Category.where(people: true)
  end
end
