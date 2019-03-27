class InstaasController < ApplicationController
  before_action :set_instaa, only: [:show, :edit, :update, :destroy]

  # GET /instaas
  # GET /instaas.json
  def index
    @instaas = Instaa.all
  end

  # GET /instaas/1
  # GET /instaas/1.json
  def show
  end

  # GET /instaas/new
  def new
    @instaa = Instaa.new
  end

  # GET /instaas/1/edit
  def edit
  end

  # POST /instaas
  # POST /instaas.json
  def create
    @instaa = Instaa.new(instaa_params)

    respond_to do |format|
      if @instaa.save
        format.html { redirect_to @instaa, notice: 'Instaa was successfully created.' }
        format.json { render :show, status: :created, location: @instaa }
      else
        format.html { render :new }
        format.json { render json: @instaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instaas/1
  # PATCH/PUT /instaas/1.json
  def update
    respond_to do |format|
      if @instaa.update(instaa_params)
        format.html { redirect_to @instaa, notice: 'Instaa was successfully updated.' }
        format.json { render :show, status: :ok, location: @instaa }
      else
        format.html { render :edit }
        format.json { render json: @instaa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instaas/1
  # DELETE /instaas/1.json
  def destroy
    @instaa.destroy
    respond_to do |format|
      format.html { redirect_to instaas_url, notice: 'Instaa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instaa
      @instaa = Instaa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instaa_params
      params.require(:instaa).permit(:title, :description, :clip, :thumbnail)
    end
end
