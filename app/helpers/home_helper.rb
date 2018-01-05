module HomeHelper
  def radio_color_tag(backpack)
    tag = "<div class='color-radio'>"
    tag << "<input type='radio' id=#{backpack.color} name='radio-group' checked>"
    tag << "<label for=#{backpack.color}></label></div>"
    tag
  end
end
