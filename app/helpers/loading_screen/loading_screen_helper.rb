module LoadingScreen::LoadingScreenHelper

  def loading_screen(options={})
    content_tag :div, '', class: 'loading_screen-spinner' do
      if options[:gif].present?
        content_tag :div, '', class: 'loading_screen-gif' do
          image_tag(options[:gif], id: 'loading_screen-spinner-image')
        end
      elsif options[:class].present?
        if options[:class] == 'double_bounce'
          [].tap do |array|
            array << content_tag(:div, '', class: 'double_bounce1')
            array << content_tag(:div, '', class: 'double_bounce2')
          end.join.html_safe
        elsif options[:class] == 'loading_screen-spinner-css'
          content_tag :div, '', id: 'loading_screen-spinner-css'
        end
      else
        content_tag :div, '', id: 'loading_screen-spinner-css'
      end
    end
  end
end
