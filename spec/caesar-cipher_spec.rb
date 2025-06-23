# frozen_string_literal: true

require_relative '../caesar-cipher.rb'

describe '#caesar_cipher' do
  context 'when message is one word' do
    context 'when message has lower-case and upper-case' do
      let(:message) { 'HeyHo'}

      it 'works with shitfNum under 26' do
        small_shift = 4
        cipher_result = caesar_cipher(message, small_shift)
        expect(cipher_result).to eq('LicLs')
      end    

      it 'works with shitfNum over 26' do
        big_shift = 46
        cipher_result = caesar_cipher(message, big_shift)
        expect(cipher_result).to eq('BysBi')
      end

      it "works with negative shitfNum, but not under -26" do
        small_neg_shift = -6
        cipher_result = caesar_cipher(message, small_neg_shift)
        expect(cipher_result).to eq('BysBi')
      end

      it "works with shitfNum under -26" do
        big_neg_shift = -39
        cipher_result = caesar_cipher(message, big_neg_shift)
        expect(cipher_result).to eq('UrlUb')  
      end
    end
  end

  context 'when message is phrase with puctuation' do
    let(:message) { 'What in the world? Ugh!'}

    it 'works with shiftNum less than 26' do
      small_shift = 10
      cipher_result = caesar_cipher(message, small_shift)
      expect(cipher_result).to eq('Grkd sx dro gybvn? Eqr!')
    end

    it 'works with shitfNum more than 26' do
      big_shift = 58
      cipher_result = caesar_cipher(message, big_shift)
      expect(cipher_result).to eq('Cngz ot znk cuxrj? Amn!')
    end

    it 'works with negative shitfNum but not less than -26' do
      small_neg_shift = -2
      cipher_result = caesar_cipher(message, small_neg_shift)
      expect(cipher_result).to eq('Ufyr gl rfc umpjb? Sef!')  
    end

    it 'works with shitfNum less -26' do
      big_neg_shift = -43
      cipher_result = caesar_cipher(message, big_neg_shift)
      expect(cipher_result).to eq('Fqjc rw cqn fxaum? Dpq!')
    end
  end

end