class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
    @subject = Subject.new
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to subjects_path
    else
      render :index
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def subject_params
    params.require(:subject).permit(:name)
  end
end
