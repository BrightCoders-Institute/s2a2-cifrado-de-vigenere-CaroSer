require_relative '../lib/vigenere_cipher'
require 'rspec'

describe VigenereCipher do
  context "Decode function" do
    it "returns decoded message" do
      
cipher=VigenereCipher.new
decoded= cipher.decode("ROVWSOIV","PASSWORD")
expect(decoded).to eq("CODEWARS")
    end
  end
  context "Encode function" do
    it "returns encoded message" do
      
cipher=VigenereCipher.new
encoded= cipher.encode("CODEWARS","PASSWORD")
expect(encoded).to eq("ROVWSOIV")
    end
  end 
end

