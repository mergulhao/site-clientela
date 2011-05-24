Jekyll::Site.class_eval do
  def process_with_compass
    `compass compile`
    process_without_compass
  end

  alias_method :process_without_compass, :process
  alias_method :process, :process_with_compass
end