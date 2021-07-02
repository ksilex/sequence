class Sequence
  def initialize(first_element)
    @current_element = first_element.to_s
  end

  def next
    self.class.new(next_element)
  end

  private

  attr_reader :current_element

  def next_element
    current_element.scan(/((\d)\2*)/).map { |element| "#{element.first.size}#{element.last}" }.join
  end
end
