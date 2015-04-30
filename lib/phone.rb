class Phone

  attr_reader(:area_code, :number, :type)

  def initialize(attributes)
      @area_code = attributes[:area_code]
      @number = attributes[:number]
      @type = attributes[:type]
  end






end
