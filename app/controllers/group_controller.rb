class GroupController < ApplicationController
  def index
    @group = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @entity = Entity.find(params[:entity_id])
    @group = @entity.Group.new(group_params)
    @group.user = current_user


    respond_to do |format|
      if @group.save
        format.html { redirect_to group_index_url(@group), notice: 'Group was successfully created.' }
      else
        format.html { redirect_to group_index_url, notice: 'Failure' }
      end
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
