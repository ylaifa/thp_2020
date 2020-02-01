require 'gossip'
require 'view'

class Controller
    def initialize
        @view = View.new
    end

    def create_gossip
        params = @view.create_gossip
        Gossip.create(params[:author], params[:content]) # car tu ne run aucune opération entre le moment où tu instancies ton gossip et le save (pas d'erreur si pas save, pas de validation...)
    end

    def index_gossips
        @view.index_gossips(Gossip.all) # car tu ne t'en sers jamais ailleurs
    end

    def delete_gossip
        delete_gossip_choice = @view.delete_gossip(Gossip.all)
        Gossip.delete(gossips, delete_gossip_choice)
      end
end