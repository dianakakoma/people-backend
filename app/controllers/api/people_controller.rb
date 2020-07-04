class Api::PeopleController < ApplicationController
  def index
    @people = Person.all
    render "index.json.jb"
  end

  def create
    @person = Person.new(
      name: params[:name],
      age: params[:age],
      education_level: params[:education_level],
      phone: params[:phone],
    )
    @person.save
    render "show.json.jb"
  end

  def show
    @person = Person.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @person = Person.find_by(id: params[:id])
    @person.name = params[:name] || @person.name
    @person.phone = params[:phone] || @person.phone
    @person.education_level = params[:education_level] || @person.education_level
    @person.age = params[:age] || @person.age
    @person.save
    render "show.json.jb"
  end

  def destroy
    @person = Person.find_by(id: params[:id])
    @person.destroy
    render json: { message: "Person successfully removed." }
  end
end
