module CardDecorator
  def context_with_ellipsis
    context.gsub(%r{(<b>).*(</b>)}, '\1[...]\2') 
  end
end
