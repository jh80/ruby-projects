# frozen_string_literal: true

require_relative '../caesar-cipher.rb'

describe '.caesar-cipher' do
  context 'when message is one word' do
    context 'when message has lower-case, upper-case, and symbols' do
      let(:message) { 'HeyHo!'}

      it 'works with shitfNum under 26' do
        let
      end    

      it 'works with shitfNum over 26' do
        
      end

      it "works with negative shitfNum, but not under -26" do
        
      end

      it "works with shitfNum under -26" do
        
      end
    end
  end

  context 'when message is phrase with puctuation' do
    it 'works with shiftNum less than 26' do
      
    end

    it 'works with shitfNum more than 26' do
      
    end

    it 'works with negative shitfNum but not less than -26' do
      
    end

    it 'works with shitfNum less -26' do
      
    end
  end

end