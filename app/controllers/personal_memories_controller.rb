class PersonalMemoriesController < ApplicationController
  before_action :set_personal_memory, only: [:show, :update, :destroy]

  # GET /personal_memories
  def index
    @personal_memories = PersonalMemory.all

    render json: @personal_memories
  end

  # GET /personal_memories/1
  def show
    render json: @personal_memory
  end

  # POST /personal_memories
  def create
    @personal_memory = PersonalMemory.new(personal_memory_params)

    if @personal_memory.save
      render json: @personal_memory, status: :created, location: @personal_memory
    else
      render json: @personal_memory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personal_memories/1
  def update
    if @personal_memory.update(personal_memory_params)
      render json: @personal_memory
    else
      render json: @personal_memory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personal_memories/1
  def destroy
    @personal_memory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_memory
      @personal_memory = PersonalMemory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def personal_memory_params
      params.require(:personal_memory).permit(:title, :memory, :location, :time, :user_id, :date)
    end
end
