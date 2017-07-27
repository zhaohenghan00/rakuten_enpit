class DataTestsController < ApplicationController
  before_action :set_data_test, only: [:show, :edit, :update, :destroy]

  # GET /data_tests
  # GET /data_tests.json
  def index
    @data_tests = DataTest.all
  end

  # GET /data_tests/1
  # GET /data_tests/1.json
  def show
  end

  # GET /data_tests/new
  def new
    @data_test = DataTest.new
  end

  # GET /data_tests/1/edit
  def edit
  end

  # POST /data_tests
  # POST /data_tests.json
  def create
    @data_test = DataTest.new(data_test_params)

    respond_to do |format|
      if @data_test.save
        format.html { redirect_to @data_test, notice: 'Data test was successfully created.' }
        format.json { render :show, status: :created, location: @data_test }
      else
        format.html { render :new }
        format.json { render json: @data_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_tests/1
  # PATCH/PUT /data_tests/1.json
  def update
    respond_to do |format|
      if @data_test.update(data_test_params)
        format.html { redirect_to @data_test, notice: 'Data test was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_test }
      else
        format.html { render :edit }
        format.json { render json: @data_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_tests/1
  # DELETE /data_tests/1.json
  def destroy
    @data_test.destroy
    respond_to do |format|
      format.html { redirect_to data_tests_url, notice: 'Data test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_test
      @data_test = DataTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_test_params
      params.require(:data_test).permit(:field1, :field2, :field3, :field4, :field5)
    end
end
