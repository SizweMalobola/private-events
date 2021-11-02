class EventAttendancesController < ApplicationController
    before_action :authenticate_user!

    def create
        @attendee = current_user.event_attendances.new(event_id: params[:event_id])
        if @attendee.save
            flash[:success] = "You have successfully set you attendance to an event"
            redirect_to root_path
        else
            flash[:danger] = "Shit went horribly wrong"
            redirect_to root_path
        end
    end

    def destroy
    end

end
