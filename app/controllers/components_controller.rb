class ComponentsController < ApplicationController
    
    def new
        
        
    end

    def create
    
        component_name = params[:component_name]


        hash = Hash.new { |hash, key| hash[key] = {} }
        hash[:en] = {}
        hash[:en][component_name] = {}

        params[:form_fields].each do |k, v|
             hash[:en][component_name][k] = v
        end

        file = File.open(Rails.root.join('config', 'locales', "#{component_name}.en.yml"), "w")

        file.puts hash.to_yaml
        file.close

        redirect_to new_component_path
        
    end
    
end