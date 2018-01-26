module LoadingScreen::LoadingScreenHelper

  def loading_screen(options={})
    options[:style] = :default unless options[:style].present?
    content_tag :div, '', class: 'loading_screen-spinner' do
      if options[:gif].present?
        content_tag :div, '', class: 'loading_screen-gif' do
          image_tag(options[:gif])
        end
      else
        content_tag :div, '', class: 'loading_screen-css' do
          if options[:style] == :double_bounce
            [].tap do |array|
              array << content_tag(:div, '', id: 'loading_screen-double_bounce1')
              array << content_tag(:div, '', id: 'loading_screen-double_bounce2')
            end.join.html_safe
          elsif options[:default]
            content_tag :div, '', id: 'loading_screen-rotating-square'
          end
        end
      end
    end
  end
end