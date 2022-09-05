class GroupController < ApplicationController
  def index
    @group = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end
end
