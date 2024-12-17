module ApplicationHelper
  def styled_widget_id(widget)
    content_tag(:span,
                widget.widget_id,
                style: "font-family: monospace;")
  end
end
