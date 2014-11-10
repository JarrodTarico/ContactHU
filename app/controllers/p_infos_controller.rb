class PInfosController < ApplicationController
  before_action :set_p_info, only: [:show, :edit, :update, :destroy]

  # GET /p_infos
  # GET /p_infos.json
  def index
    @p_infos = PInfo.all
  end

  # GET /p_infos/1
  # GET /p_infos/1.json
  def show
  end

  # GET /p_infos/new
  def new
    @p_info = PInfo.new
  end

  # GET /p_infos/1/edit
  def edit
  end

  # POST /p_infos
  # POST /p_infos.json
  def create
    @p_info = PInfo.new(p_info_params)

    respond_to do |format|
      if @p_info.save
        format.html { redirect_to @p_info, notice: 'P info was successfully created.' }
        format.json { render :show, status: :created, location: @p_info }
      else
        format.html { render :new }
        format.json { render json: @p_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_infos/1
  # PATCH/PUT /p_infos/1.json
  def update
    respond_to do |format|
      if @p_info.update(p_info_params)
        format.html { redirect_to @p_info, notice: 'P info was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_info }
      else
        format.html { render :edit }
        format.json { render json: @p_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_infos/1
  # DELETE /p_infos/1.json
  def destroy
    @p_info.destroy
    respond_to do |format|
      format.html { redirect_to p_infos_url, notice: 'P info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_info
      @p_info = PInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_info_params
      params.require(:p_info).permit(:Name, :Rank, :Department, :Room, :Email, :Ext, :OfficeHours)
    end
end
