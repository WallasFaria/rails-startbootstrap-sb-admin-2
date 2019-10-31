module ActiveLinkToHelper
  def active_link_to(*args)
    if block_given?
      link_to args[0], *options_with_active_class(args, true) do
        yield
      end
    else
      link_to args[0], args[1], *options_with_active_class(args, false)
    end
  end

  def add_active_class(option)
    return 'active' if active_link?(option)
  end

  def active_link?(option)
    return current_page?(option) if option.is_a? String

    return nil unless option.is_a? Hash

    return current_page?(option[:path]) if option[:path]

    if option[:starting_with]
      return request.path.start_with? option[:starting_with]
    end

    if option[:includes]
      includes = [option[:includes]].flatten
      return includes.any? { |elem| request.path.include? elem }
    end
  end

  private

  def options_with_active_class(args, block)
    path = block ? args[0] : args[1]
    options_array = block ? args[1..-1] : args[2..-1]
    options = {}.merge(*options_array).symbolize_keys

    return options_array unless active_link?(options.merge({ path: path }))

    if options[:class].is_a? String
      options[:class] += ' active'
    else
      'active'
    end

    options.map {|k,v| {k => v}}
  end
end
