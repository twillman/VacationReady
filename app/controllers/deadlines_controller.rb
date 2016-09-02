class DeadlinesController < ApplicationController
  before_action :set_deadline, only: [:show, :edit, :update, :destroy]

  # GET /deadlines
  # GET /deadlines.json
  def index
    @deadlines = Deadline.all
  end

  # GET /deadlines/1
  # GET /deadlines/1.json
  def show
  end

  # GET /deadlines/new
  def new
    @deadline = Deadline.new
  end

  # GET /deadlines/1/edit
  def edit
  end

  # POST /deadlines
  # POST /deadlines.json
  def create
    @deadline = Deadline.new(deadline_params)

    respond_to do |format|
      if @deadline.save
        format.html { redirect_to @deadline, notice: 'Deadline was successfully created.' }
        format.json { render :show, status: :created, location: @deadline }
      else
        format.html { render :new }
        format.json { render json: @deadline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deadlines/1
  # PATCH/PUT /deadlines/1.json
  def update
    respond_to do |format|
      if @deadline.update(deadline_params)
        format.html { redirect_to @deadline, notice: 'Deadline was successfully updated.' }
        format.json { render :show, status: :ok, location: @deadline }
      else
        format.html { render :edit }
        format.json { render json: @deadline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deadlines/1
  # DELETE /deadlines/1.json
  def destroy
    @deadline.destroy
    respond_to do |format|
      format.html { redirect_to deadlines_url, notice: 'Deadline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deadline
      @deadline = Deadline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deadline_params
      params.require(:deadline).permit(:due_date, :task, :status)
    end
end
