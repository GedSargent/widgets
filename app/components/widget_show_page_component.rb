class WidgetShowPageComponent < ViewComponent::Base
  include ApplicationHelper

  def initialize(widget:)
    @widget = widget
  end

  def local_to_user?(current_user)
    @widget.manufacturer.address.us_state == current_user.address.us_state
  end
end
