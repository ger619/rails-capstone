class GroupController < ApplicationController
  def index
    @group = Group.all
    @entity = Entity.all
  end

  def show
    @group = Group.find(params[:id])
    @group.user = current_user
    @entity = Entity.find(params[:id])
    # @group = Group.joins(:entities).where('entities.group_id = ?', params[:id]).pluck(:name, :amount)
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user

    respond_to do |format|
      if @group.save
        format.html { redirect_to group_index_path(@group), notice: 'Group was successfully created.' }
      else
        format.html { redirect_to group_index_url, notice: 'Failure' }
      end
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.user = current_user
    @group.delete
    respond_to do |format|
      format.html { redirect_to group_index_path, notice: 'Group was successfully deleted.' }
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
