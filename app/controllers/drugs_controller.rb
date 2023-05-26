class DrugsController < ApplicationController

    get '/drugs' do 
        drugs = Drug.all
        drugs.to_json(include: [:pharmacy])
    end
end