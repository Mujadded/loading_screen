module LoadingScreen

  def loading_screen(type = '')

    loading_screen_gif = '/images/loading_screen-infinity.gif'

    loading_div = '<div class="loading_screen-spinner">'

    if type == 'css'
      loading_div << '<div class="div" id="loading_screen-spinner-css"></div>'
    else
      loading_div << '<div>'
      loading_div << '<%=' + image_tag(loading_screen_gif, id: 'spinner-image') + '%>'
      loading_div << '</div>'
    end

    loading_div << '</div>'

  end
end
