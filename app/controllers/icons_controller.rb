require 'rmagick'

class IconsController < ApplicationController
  def show
    ## Variables
    size = params[:size]
    filename = "#{params[:style]}-#{params[:currency]}-#{size}.png"
    svg_path = Rails.root.join("public", "svg", params[:style], "#{params[:currency]}.svg")
    
    ## Build SVG
    svg = InlineSvg::TransformPipeline.generate_html_from(svg_path, {
      :size => "#{size}*#{size}", 
      :viewBox => "0 0 32 32"
    }).to_s
    
    ## Create image
    image = Magick::Image.from_blob(svg) {
      self.format = 'svg'
      self.background_color = 'transparent'
    }.first
    
    image.format = 'png'
    
    ## Send image data
    send_data image.to_blob, :filename => filename, :disposition => 'inline', :type => 'image/png'
  end
end
