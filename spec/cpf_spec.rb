require "spec/../lib/brcpf"

describe Brcpf, "CPF_BLACK_LIST" do
  it "return nil if number in list cpf black list" do
    cpf = Brcpf.new(11111111111)
    cpf.numero.should == nil
  end
end
