class DrugsController < ApplicationController

    get '/drugs' do 
        drugs = Drug.all
        drugs.to_json(include: [:pharmacy])
    end

    post '/drugs' do
        drug = Drug.create(params)
        drug.to_json
    end

end