class EntityController < ApplicationController
  def index
    @entity = Entity.all.order('created_at DESC')
    @group = Group.all.order('created_at DESC')
  end

  def show
    @entity = Entity.find(params[:id])
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = Entity.new(entity_params)
    @entity.user = current_user

    respond_to do |format|
      if @entity.save
        format.html { redirect_to group_entity_index_url(@entity), notice: 'Entity was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity, notice: 'Failure' }
      end
    end
  end

  def destroy
    @entity = Entity.find(params[:id])
    @entity.delete
    respond_to do |format|
      format.html { redirect_to group_entity_index_url, notice: 'Entity was successfully deleted.' }
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :user_id)
  end
end
