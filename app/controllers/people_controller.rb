class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    @new_person = Person.new(person_params)

    if @new_person.save
      redirect_to people_path
    end
  end

  def new
    @person = Person.new
  end

  private
  def person_params
    params.require(:person).permit(:name, :age)
  end
end
