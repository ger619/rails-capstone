class EntityController < ApplicationController
  def index
    @entity = Entity.all
  end

  def show
    @entity = Entity.find(params[:id])
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = Entity.new(entity_params)
    @entity = current_user.entities.build(entity_params)

    respond_to do |format|
      if @entity.save
        format.html { redirect_to entity_path(@entity), notice: 'Entity was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :description, :user_id)
  end
end
