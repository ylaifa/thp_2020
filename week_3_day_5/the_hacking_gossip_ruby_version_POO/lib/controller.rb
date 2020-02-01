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
        gossips = Gossip.all
        @view.index_gossips(gossips)
    end

    def delete_gossip
        gossips = Gossip.all
        delete_gossip_choice = @view.delete_gossip(gossips)
        Gossip.delete(gossips, delete_gossip_choice)
        end
end