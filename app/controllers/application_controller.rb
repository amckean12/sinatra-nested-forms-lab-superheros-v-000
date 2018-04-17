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
        SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
      end
      erb :team
    end
  end
