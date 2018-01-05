module HomeHelper
  def radio_color_tag(backpack)
    tag = "<div>"
    tag << "<input type='radio' id=#{backpack.color} name='color' value=#{backpack.color} >"
    tag << "<label for=#{backpack.color} >"
    tag << "<span>"
    tag << "<img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg' alt='Checked Icon' />"
    tag << "</span></label></div>"
  end
end
