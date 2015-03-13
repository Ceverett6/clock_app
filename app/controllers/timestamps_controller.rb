class TimestampsController < ApplicationController
  def create
    @user = User.find(params[:employee_id])
    @timestamp = @user.timestamps.create(timestamp_params)
    redirect_to user_path(@user)
  end

  private
    def timestamp_params
      params.require(:timestamp).permit(:employee_Id)
    end
end
