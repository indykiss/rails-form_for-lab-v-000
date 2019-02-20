class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
      @school_class = SchoolClass.new
  	  @school_class.title = params[:title]
  	  @school_class.room_number = params[:room_number]
  	  @school_class.save
  	  redirect_to school_class_path(@school_class)
  end

  def update
     @school_class = SchoolClass.find(params[:id])
     @school_class.update(school_class_params(:title, :room_number))
     redirect_to school_class_path(@school_class)
  end




end