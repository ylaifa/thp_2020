require 'gossip'
require 'view'

class Controller
    def initialize
        @view = View.new
    end

    def create_gossip
        params = @view.create_gossip
        gossip = Gossip.new(params[:author], params[:content])
        gossip.save
    end

    def index_gossips
        @view.index_gossips(Gossip.all) # car tu ne t'en sers jamais ailleurs
    end

    def delete_gossip
        gossips = Gossip.all
        delete_gossip_choice = @view.delete_gossip(gossips)
        Gossip.delete(gossips, delete_gossip_choice)
      end
end