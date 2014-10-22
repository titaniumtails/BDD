class ThingItemsController < ApplicationController
  before_action :set_thing_item, only: [:show, :edit, :update, :destroy]

  # GET /thing_items
  # GET /thing_items.json
  def index
    @thing_items = ThingItem.all
  end

  # GET /thing_items/1
  # GET /thing_items/1.json
  def show
  end

  # GET /thing_items/new
  def new
    @thing_item = ThingItem.new
  end

  # GET /thing_items/1/edit
  def edit
  end

  # POST /thing_items
  # POST /thing_items.json
  def create
    @thing_item = ThingItem.new(thing_item_params)

    respond_to do |format|
      if @thing_item.save
        format.html { redirect_to @thing_item, notice: 'Thing item was successfully created.' }
        format.json { render :show, status: :created, location: @thing_item }
      else
        format.html { render :new }
        format.json { render json: @thing_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thing_items/1
  # PATCH/PUT /thing_items/1.json
  def update
    respond_to do |format|
      if @thing_item.update(thing_item_params)
        format.html { redirect_to @thing_item, notice: 'Thing item was successfully updated.' }
        format.json { render :show, status: :ok, location: @thing_item }
      else
        format.html { render :edit }
        format.json { render json: @thing_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thing_items/1
  # DELETE /thing_items/1.json
  def destroy
    @thing_item.destroy
    respond_to do |format|
      format.html { redirect_to thing_items_url, notice: 'Thing item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing_item
      @thing_item = ThingItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thing_item_params
      params.require(:thing_item).permit(:name, :picture)
    end
end
