class DrugsController < ApplicationController

    get '/drugs' do 
        drugs = Drug.all
        drugs.to_json(include: [:pharmacy])
    end

    post '/drugs' do
        drug = Drug.create(params)
        drug.to_json
    end

    delete '/drugs/:id' do 
        drug = Drug.find_by(id: params[:id])
        drug.destroy
    end

end