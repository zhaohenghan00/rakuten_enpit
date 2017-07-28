class RakutenclipsController < ApplicationController
  before_action :set_rakutenclip, only: [:show, :edit, :update, :destroy]

  # GET /rakutenclips
  # GET /rakutenclips.json
  def index
    @rakutenclips = Rakutenclip.all
  end

  # GET /rakutenclips/1
  # GET /rakutenclips/1.json
  def show
  end

  # GET /rakutenclips/new
  def new
    @rakutenclip = Rakutenclip.new
  end

  # GET /rakutenclips/1/edit
  def edit
  end

  # POST /rakutenclips
  # POST /rakutenclips.json
  def create
    @rakutenclip = Rakutenclip.new(rakutenclip_params)

    respond_to do |format|
      if @rakutenclip.save
        format.html { redirect_to @rakutenclip, notice: 'Rakutenclip was successfully created.' }
        format.json { render :show, status: :created, location: @rakutenclip }
      else
        format.html { render :new }
        format.json { render json: @rakutenclip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rakutenclips/1
  # PATCH/PUT /rakutenclips/1.json
  def update
    respond_to do |format|
      if @rakutenclip.update(rakutenclip_params)
        format.html { redirect_to @rakutenclip, notice: 'Rakutenclip was successfully updated.' }
        format.json { render :show, status: :ok, location: @rakutenclip }
      else
        format.html { render :edit }
        format.json { render json: @rakutenclip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rakutenclips/1
  # DELETE /rakutenclips/1.json
  def destroy
    @rakutenclip.destroy
    respond_to do |format|
      format.html { redirect_to rakutenclips_url, notice: 'Rakutenclip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rakutenclip
      @rakutenclip = Rakutenclip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rakutenclip_params
      params.require(:rakutenclip).permit(:clipdate, :itemid, :comment)
    end
end
