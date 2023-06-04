class PharmaciesController < ApplicationController

    get '/pharmacies' do 
        pharmacies = Pharmacy.all 
        pharmacies.to_json(include: :drugs)
    end

    get '/pharmacies/:id' do
        pharmacy = Pharmacy.find_by(id: params[:id])
        pharmacy.to_json(include: :drugs)
    end

    get '/pharmacies/:id/drugs' do
        pharmacy = Pharmacy.find_by(id: params[:id]).drugs
        pharmacy.to_json
    end

    post '/pharmacies/:id' do
        pharmacy = Pharmacy.find_by(id: params[:id])
        drug = pharmacy.drugs.create(name: params[:name], dose: params[:dose], formulation: params[:formulation], quantity: params[:quantity])
        drug.to_json
    end

    delete '/pharmacies/:id/drugs/:drug_id' do
        pharmacy = Pharmacy.find_by(id: params[:id])
        pharmacy.drugs.find_by(id: params[:drug_id]).destroy.to_json
    end

    patch '/pharmacies/:id/drugs/:drug_id' do
        pharmacy = Pharmacy.find_by(id: params[:id])
        pharmacy.drugs.find_by(id: params[:drug_id]).update(name: params[:name], dose: params[:dose], formulation: params[:formulation], quantity: params[:quantity])
    end
end