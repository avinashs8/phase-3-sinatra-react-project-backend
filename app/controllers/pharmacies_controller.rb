class PharmaciesController < ApplicationController

    get '/pharmacies' do 
        pharmacies = Pharmacy.all 
        pharmacies.to_json(include: :drugs)
    end

    get '/pharmacies/:id' do
        pharmacy = Pharmacy.find_by(id: params[:id])
        pharmacy.to_json(include: :drugs)
    end

    
end