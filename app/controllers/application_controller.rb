require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end

    post '/teams' do
      team_name = params[:team][:name]
      team_motto = params[:team][:motto]
      @team = Team.new(name: team_name,  motto: team_motto)
      team_members = params[:team][:members]
      @super_heroes = team_members.collect do |member_params|
          #Paramaters for SuperHero Class
          super_hero_name = member_params[:name]
          super_hero_power = member_params[:power]
          suepr_hero_bio = member_params[:bio]
  
          SuperHero.new({name: super_hero_name, power: super_hero_power, bio: suepr_hero_bio})
      end
      erb :team
    end
  end
