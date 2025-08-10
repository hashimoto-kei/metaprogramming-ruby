class TryOut
  attr_accessor :first_name

  def initialize(first_name, middle_name=nil, last_name)
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
  end

  def full_name
    names.join(' ')
  end

  def upcase_full_name
    full_name.upcase
  end

  def upcase_full_name!
    names.map(&:upcase!).join(' ')
  end

  private

  def names
    [@first_name, @middle_name, @last_name].compact
  end
end
