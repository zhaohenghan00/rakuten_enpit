class RakutenclipsController < ApplicationController
  before_action :set_rakutenclip, only: [:show, :edit, :update, :destroy]
  include RakutenclipsHelper

  # GET /rakutenclips
  # GET /rakutenclips.json
  def index
    @rakutenclips = Rakutenclip.all
  end

  # GET /rakutenclips/1
  # GET /rakutenclips/1.json
  def show
    dummy_item
  end

  # GET /rakutenclips/new
  def new
    @rakutenclip = Rakutenclip.new
  end

  # GET /rakutenclips/1/edit
  def edit
  end

  # GET /rakutenclips/list
  def list
    if request.post? then
    @value = params['searchVaule']
    end

    @items = RakutenWebService::Ichiba::Item.search(keyword: @value)
@items.each do |item|

  # したい処理
  puts item['itemName'] #商品名
  puts item['itemPrice'] #価格
  puts item['itemUrl'] #商品のURL

  end

# @items = RakutenWebService::Ichiba::Item.search(:keyword => 'Ruby') # This returns Enumerable object
# @items.first(10).each do |item|
#   puts "#{item['itemName']}, #{item.price} yen" # You can refer to values as well as Hash.
# end

 puts "test"

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


def search_rakuten_api(keyword)
  items = RakutenWebService::Ichiba::Item.search(keyword: keyword)
  images_arr = []
  items.each do |item|

  # したい処理
  puts item['itemName'] #商品名
  puts item['itemPrice'] #価格
  puts item['itemUrl'] #商品のURL

  end
end