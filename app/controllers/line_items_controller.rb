class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  # GET /line_items
  # GET /line_items.json
  # def index
  #   @line_items = LineItem.all
  # end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # Post /line_items/
  def create
    if params[:token]
    @line_item = LineItem.new(
      cart: Cart.new,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    @line_item.save
    render json: @line_item
  else
    @line_item = LineItem.new(
      cart: Cart.new,
      product_id: params[:product_id],
      quantity: params [:quantity]

    )
    @line_item.save
  end
  render json: @line_item
end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json


  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    @line_item = LineItem.find(params[:id])
    @line_item.quantity = params[:quantity]
    @line_item.save
    render json: @line_item
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to line_items_url, notice: 'Line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:quantity, :product_id)
    end
end
