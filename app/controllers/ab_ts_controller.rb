class AbTsController < ApplicationController
  before_action :set_ab_t, only: [:show, :update, :destroy]

  # GET /ab_ts
  def index
    @ab_ts = AbT.all

    render json: @ab_ts
  end

  # GET /ab_ts/1
  def show
    render json: @ab_t
  end

  # POST /ab_ts
  def create
    @ab_t = AbT.new(ab_t_params)

    if @ab_t.save
      render json: @ab_t, status: :created, location: @ab_t
    else
      render json: @ab_t.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ab_ts/1
  def update
    if @ab_t.update(ab_t_params)
      render json: @ab_t
    else
      render json: @ab_t.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ab_ts/1
  def destroy
    @ab_t.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_t
      @ab_t = AbT.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ab_t_params
      params.require(:ab_t).permit(:email, :comments)
    end
end
