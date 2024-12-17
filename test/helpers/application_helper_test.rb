require "test_helper"
require 'ostruct'

class ApplicationHelperTest < ActionView::TestCase
  test "styled_widget_id < 6 digits, pad with 0s" do
    widget = OpenStruct.new(widget_id: "12.34")
    rendered_markup = styled_widget_id(widget)

    assert_match /\D0012\.34\D/, rendered_markup
    assert rendered_markup.html_safe?
  end

  test "styled_widget_id >= 6 digits, no padding" do
    widget = OpenStruct.new(widget_id: "9876.43")
    rendered_markup = styled_widget_id(widget)

    assert_match /\D9876\.43\D/, rendered_markup
    assert rendered_markup.html_safe?
  end
end
