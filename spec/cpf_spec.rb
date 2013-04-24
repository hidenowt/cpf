#cd spec
#rspec cpf_spec.rb
require "../lib/cpf"

describe CPF, "Validador de CPF" do
  it "return true if cpf is valid" do
    #cpf = CPF.new('461.438.125-19') 
    #cpf = CPF.new('623.126.220-09')
    #cpf = CPF.new('271.224.284-00')
    #cpf = CPF.new('056.738.685-61')
    cpf = CPF.new('876.424.364-83')
    cpf.valido?.should == true
  end
  
  it "return false if cpf is not valid" do
    cpf = CPF.new('876.424.364-84')
    cpf.valido?.should == false
  end
  
  it "returns false if the cpf is invalid due to the same sequence number" do
    cpf = CPF.new('111.111.111-11')
    cpf.valido?.should == false
  end
  
  it "returns true if the CPF is true even when it is not formatted" do
    cpf = CPF.new('87642436483')
    cpf.valido?.should == true
  end
end

