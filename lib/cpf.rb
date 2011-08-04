# -*- coding: utf-8 -*-

class CPF
  #Cria Getters do CPF e do Dígito Verificador
  attr_reader :cpf, :verificador
  
  #Cria a Lista Negra
  CPF_BLACK_LIST = ['00000000000', '11111111111', '22222222222', '33333333333', '44444444444', '55555555555', '66666666666', '77777777777', '88888888888', '99999999999']
  
  def initialize(cpf)
    @cpf = cpf
    cpf = @cpf.gsub(/[- . \/ \\]/,'')
    @verificador = cpf[cpf.size-2 .. cpf.size]
  end
  
  def valido?
    #Retira - . / \ da string cpf
    cpf = @cpf.gsub(/[- . \/ \\]/,'')
    
    #Verifica se está na lista negra de CPF Válidos
    CPF_BLACK_LIST.each { |item| 
      return false if item.to_i == cpf.to_i
    }  
    
    #Armazena o Dígito Verificador
    @verificador = cpf[cpf.size-2 .. cpf.size]


    #Validacao do Primeiro Digito Verificador    
    soma = 0
    for i in (2..10)
      soma += cpf[10-i].to_i * i.to_i
    end
    
    preverificador = (soma - (soma/11)*11) 
    if preverificador==0 or preverificador==1
      verificador1 = 0
    else
      verificador1 = 11-preverificador
    end
    
    return false if verificador1.to_i != @verificador[0].to_i
    
    
    #Validacao do Segundo Digito Verificador
    soma = 0
    for i in (3..11)
      soma += cpf[11-i].to_i * i.to_i
    end
    soma += @verificador[0].to_i*2
    
    preverificador = (soma - (soma/11)*11) 
    if preverificador==0 or preverificador==1
      verificador2 = 0
    else
      verificador2 = 11-preverificador
    end
    
    return false if verificador2.to_i != @verificador[1].to_i
    
    
    #Retorno Final
    return true if verificador1.to_i==@verificador[0].to_i and verificador2.to_i==@verificador[1].to_i
  end
end
