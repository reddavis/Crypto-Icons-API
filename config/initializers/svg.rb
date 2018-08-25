class ViewBoxTransform < InlineSvg::CustomTransformation
  def transform(doc)
    with_svg(doc) do |svg|
      svg["viewBox"] = value
    end
  end
end


InlineSvg.configure do |config|
  config.add_custom_transformation(attribute: :viewBox, transform: ViewBoxTransform)
end
