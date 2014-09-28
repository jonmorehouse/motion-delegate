class DelegateExample

  #include Delegate::Delegate
  #delegate :array, :first, :last

  attr_accessor :array

  def initialize(attrs = {})
    @array = [:first, :last]
  end


end
