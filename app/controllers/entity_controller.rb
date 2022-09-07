class EntityController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @entity = Entity.all
  end

  def show
    @entity = Entity.find(params[:id])
  end

  def new
    @group = Group.find(params[:group_id])
    @entity = @group.Entity.new
  end

  def create
    @entity = Entity.new(entity_params)
    @entity.user = current_user

    respond_to do |format|
      if @entity.save
        format.html { redirect_to entity_url(@entity), notice: 'Entity was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :user_id)
  end
end
