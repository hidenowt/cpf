module CPF
  
  attr_reader :numero

  def initialize(numero)
    @numero = numero.to_s.gsub(/[\.\/-]/,"")
    @numero = CPF_BLACK_LIST.include?(@numero) ? nil : @numero
  end

  private
  CPF_BLACK_LIST = %w( 00000000000 11111111111 22222222222 33333333333 44444444444
                       55555555555 66666666666 77777777777 88888888888 99999999999 )
end
