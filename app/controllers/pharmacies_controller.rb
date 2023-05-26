class PharmaciesController < ApplicationController

    get '/pharmacies' do 
        pharmacies = Pharmacy.all 
        pharmacies.to_json(include: :drugs)
    end
end