class TryOut
  attr_accessor :first_name

  def initialize(first_name, middle_name=nil, last_name)
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
  end

  def full_name
    [@first_name, @middle_name, @last_name].compact.join(' ')
  end

  def upcase_full_name
    full_name.upcase
  end

  def upcase_full_name!
    [@first_name,@middle_name,@last_name].compact.map(&:upcase!).join(' ')
  end 
end
