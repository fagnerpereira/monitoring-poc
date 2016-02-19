require 'rails_helper'

describe Validator do
  describe '.json' do
    context 'when it is disponible' do
      let(:disponible_api) { { "Postmark" => true} }
      
      before do 
        Postmark.create(disponible: true)
      end
      
      it { expect(Validator.json).to eq(disponible_api) }    
    end
        
    context 'when it is not disponible' do
      let(:indisponible_api) { {"Postmark" => false} }
      
      before do 
        Postmark.create(disponible: false)
      end
    
      it { expect(Validator.json).to eq(indisponible_api) }      
    end
    
    context 'when there are more than one service' do
      let(:service_list) { {"Postmark" => true, "Heroku" => true} }
      
      before do
        Postmark.create(disponible: true)
        Heroku.create(disponible: true)
      end
      
      it { expect(Validator.json).to eq(service_list) }
    end
  end  
end
