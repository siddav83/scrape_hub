module ApplicationHelper

  def render_stars(value)
    output = ''
    if (1..10).include?(value.to_i)
      value.to_i.times { output += '★' }
    end
    output
  end


end
