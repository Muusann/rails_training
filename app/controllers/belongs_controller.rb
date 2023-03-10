class BelongsController < ApplicationController
  before_action :set_belong, only: %i[ show edit update destroy ]

  # GET /belongs or /belongs.json
  def index
    @belongs = Belong.all
  end

  # GET /belongs/1 or /belongs/1.json
  def show
  end

  # GET /belongs/new
  def new
    @belong = Belong.new
  end

  # GET /belongs/1/edit
  def edit
  end

  # POST /belongs or /belongs.json
  def create
    @belong = Belong.new(belong_params)

    respond_to do |format|
      if @belong.save
        format.html { redirect_to belong_url(@belong), notice: "Belong was successfully created." }
        format.json { render :show, status: :created, location: @belong }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @belong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /belongs/1 or /belongs/1.json
  def update
    respond_to do |format|
      if @belong.update(belong_params)
        format.html { redirect_to belong_url(@belong), notice: "Belong was successfully updated." }
        format.json { render :show, status: :ok, location: @belong }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @belong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /belongs/1 or /belongs/1.json
  def destroy
    @belong.destroy

    respond_to do |format|
      format.html { redirect_to belongs_url, notice: "Belong was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_belong
      @belong = Belong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def belong_params
      params.require(:belong).permit(:name)
    end
end
