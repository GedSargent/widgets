require 'ostruct'

class WidgetRatingsController < ApplicationController
  def create
    if params[:widget_id]
      redirect_to widget_path(params[:widget_id]),
                  notice: "Thanks for rating!"
    else
      head :bad_request
    end
  end
end
