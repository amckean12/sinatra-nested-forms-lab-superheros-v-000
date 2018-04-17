require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:heros].each do |details|
        Superhero.new(details)
      end
      @heros = Superhero.all
      erb :super_hero
    end
  end
end
