class SchoolClassesController <  ApplicationController

  def index
    @schoolClasses = SchoolClass.all
  end

  def new
    @schoolClass = SchoolClass.new
  end

  def create
    @schoolClass = SchoolClass.new
    @schoolClass.title = params[:school_class][:title]
    @schoolClass.room_number = params[:school_class][:room_number]
    @schoolClass.save
    redirect_to school_class_path(@schoolClass)
  end

  def show
    @schoolClass = SchoolClass.find(params[:id])
  end


  def edit
    @schoolClass = SchoolClass.find(params[:id])
  end

  def update
    @schoolClass = SchoolClass.find(params[:id])
    @schoolClass.update(params.require(:school_class))
    redirect_to school_classes_path(@schoolClass)
  end


  private

  # def params(*args)
  #
  # end
end
