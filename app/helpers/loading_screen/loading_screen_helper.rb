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
    options[:color] = "background-color: " + options[:color] if options[:color]
    content_tag :div, '', class: 'loading_screen-css' do
      if options[:style] == :double_bounce
        load_double_bounce options[:color]
      elsif options[:style] == :rectangle_bounce
        load_rectangle_bounce options[:color]
      elsif options[:style] == :default
        load_rotate_square options[:color]
      else
        raise LoadingScreen::InvalidOptionError.new "Wrong style name: '#{options[:style]}'"
      end
    end
  end

  def load_double_bounce(color)
    [].tap do |array|
      array << content_tag(:div, '', id: 'loading_screen-double-bounce1', style: color )
      array << content_tag(:div, '', id: 'loading_screen-double-bounce2' , style: color )
    end.join.html_safe
  end

  def load_rotate_square(color)
    content_tag :div, '', id: 'loading_screen-rotating-square' , style: color
  end

  def load_rectangle_bounce(color)
    [].tap do |array|
      array << content_tag(:div, '', id: 'loading_screen-rect1', style: color)
      array << content_tag(:div, '', id: 'loading_screen-rect2', style: color)
      array << content_tag(:div, '', id: 'loading_screen-rect3', style: color)
      array << content_tag(:div, '', id: 'loading_screen-rect4', style: color)
      array << content_tag(:div, '', id: 'loading_screen-rect5', style: color)
    end.join.html_safe
  end
end
