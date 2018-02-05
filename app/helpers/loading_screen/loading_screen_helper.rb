module LoadingScreen::LoadingScreenHelper

  def loading_screen(options={})
    options[:style] = :default unless options[:style]
    options[:background] = "background-color: " + options[:background] if options[:background]
    content_tag :div, '', class: 'loading_screen-spinner', style: options[:background] do
      if options[:gif].present?
        gif_handler options
      else
        css_handler options
      end
    end
  end

  private

  def gif_handler(options)
    content_tag :div, '', class: 'loading_screen-gif' do
      image_tag(options[:gif])
    end
  rescue Sprockets::Rails::Helper::AssetNotFound => e
    raise LoadingScreen::InvalidOptionError.new "'#{options[:gif]}' file does not exist"
  end

  def css_handler(options)
    content_tag :div, '', class: 'loading_screen-css' do
      if options[:style] == :double_bounce
        multiple_div_content 2, 'loading_screen-double-bounce', options[:color]
      elsif options[:style] == :rectangle_bounce
        multiple_div_content 5, 'loading_screen-rect', options[:color]
      elsif options[:style] == :wandering_cubes
        multiple_div_content 2, 'loading_screen-cube', options[:color]
      elsif options[:style] == :default
        style = options[:color] ? "background-color: " + options[:color] : nil
        content_tag :div, '', id: 'loading_screen-rotating-square' , style: style
      else
        raise LoadingScreen::InvalidOptionError.new "Wrong style name: '#{options[:style]}'"
      end
    end
  end

  def multiple_div_content(number_of_div, id_name, color)
    style = color ? "background-color: " + color : nil
    [].tap do |array|
      number_of_div.times do |i|
        array << content_tag(:div, '', id: "#{id_name}#{i+1}", style: style)
      end
    end.join.html_safe
  end
end
