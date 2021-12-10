class CoursesController < ApplicationController
  def index
    @courses = Courses.all
    render :index
  end

  def create
    @course = Course.new(course_params)

    if @course.save 
      render :show
    else
      render json: @course.errors.full_messages, status: 401
    end
  end

  def show
    @course = Course.find_by(id: params[:id])

    if @course 
      render :show
    else
      render json: ["Course does not exist."], status: 404
    end
  end

  def update
    @course = Course.find_by(id: params[:course][:id])

    if @course.nil? 
      render json: ["Course does not exist."], status: 404
    elsif @course.update(course_params)
      render :show
    else
      render json: @course.errors.full_messages, status: 401
    end
  end

  def destroy
    @course = Course.find_by(id: params[:id])
    if @course
      @course.destroy
    else
      render json: ["No course with that id."], status: 404
    end
  end

  private
  def course_params
    params.require(:course).permit(:id, :name, :release_date)
  end
end
