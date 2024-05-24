class TeacherCvsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_teacher_cv, only: %i[ show edit update destroy ]

  # GET /teacher_cvs or /teacher_cvs.json
  def index
    @teacher_cvs = TeacherCv.all
  end

  # GET /teacher_cvs/1 or /teacher_cvs/1.json
  def show
  end

  # GET /teacher_cvs/new
  def new
    @teacher_cv = TeacherCv.new
  end

  # GET /teacher_cvs/1/edit
  def edit
  end

  # POST /teacher_cvs or /teacher_cvs.json
  def create
    @teacher_cv = TeacherCv.new(teacher_cv_params)

    respond_to do |format|
      if @teacher_cv.save
        format.html { redirect_to teacher_cvs_path, notice: "Teacher cv was successfully created." }
        format.json { render :show, status: :created, location: @teacher_cv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher_cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_cvs/1 or /teacher_cvs/1.json
  def update
    respond_to do |format|
      if @teacher_cv.update(teacher_cv_params)
        format.html { redirect_to teacher_cvs_path, notice: "Teacher cv was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher_cv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher_cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_cvs/1 or /teacher_cvs/1.json
  def destroy
    @teacher_cv.destroy!

    respond_to do |format|
      format.html { redirect_to teacher_cvs_url, notice: "Teacher cv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_cv
      @teacher_cv = TeacherCv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_cv_params
      params.require(:teacher_cv).permit(:title, :content)
    end
end
