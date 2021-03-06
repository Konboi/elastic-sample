class Topic < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  mapping do
    indexes :title
    indexes :body
  end

  def self.search(params)
    logger.debug("------------------")
    logger.debug(params)
    
    tire.search(load: true) do
      query {
        string "body:#{params[:search]} title:#{params[:search]}"
      } if params[:search].present?
    end
  end
end
