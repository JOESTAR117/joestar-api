class Api::JojosController < ApplicationController
  before_action :set_jojo, only: %i[show update destroy]

  # GET /jojos
  def index
    @jojos = Jojo.search(params[:term]).sorted_by_name

    render json: @jojos
  end

  # GET /jojos/1
  def show
    render json: @jojo
  end

  # POST /jojos
  def create
    @jojo = Jojo.new(jojo_params)

    if @jojo.save
      render json: @jojo, status: :created, location: api_jojo_url(@jojo)
    else
      render json: @jojo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jojos/1
  def update
    if @jojo.update(jojo_params)
      render json: @jojo
    else
      render json: @jojo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jojos/1
  def destroy
    @jojo.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_jojo
    @jojo = Jojo.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def jojo_params
    params.require(:jojo).permit(:name)
  end
end
