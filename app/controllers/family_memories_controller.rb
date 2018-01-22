class FamilyMemoriesController < ApplicationController
  before_action :set_family_memory, only: [:show, :update, :destroy]

  # GET /family_memories
  def index
    @family_memories = FamilyMemory.all

    render json: @family_memories
  end

  # GET /family_memories/1
  def show
    render json: @family_memory
  end

  # POST /family_memories
  def create
    @family_memory = FamilyMemory.new(family_memory_params)

    if @family_memory.save
      render json: @family_memory, status: :created, location: @family_memory
    else
      render json: @family_memory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /family_memories/1
  def update
    if @family_memory.update(family_memory_params)
      render json: @family_memory
    else
      render json: @family_memory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /family_memories/1
  def destroy
    @family_memory.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_memory
      @family_memory = FamilyMemory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def family_memory_params
      params.require(:family_memory).permit(:family_id, :title, :memory, :location, :time, :user_id)
    end
end
