# frozen_string_literal: true

require_relative '../caesar-cipher.rb'

describe '.caesar-cipher' do
  context 'when message is one word' do
    context 'when message has lower-case, upper-case, and symbols' do

      context 'when shiftNum is under 26' do
              
      end    

      context 'when shiftNum is over 26' do
        
      end

      context "when shiftNum is negative, but not under 26" do
        
      end

      context "when shiftNum is negative under 26" do
        
      end
    end
  end

  context 'when message is more than one word' do
    context 'when message is less than 26' do
      
    end

    context 'when message is more than 26' do
      
    end

    context 'when message is negative but not less than -26' do
      
    end

    context 'when message in less -26' do
      
    end
  end

end