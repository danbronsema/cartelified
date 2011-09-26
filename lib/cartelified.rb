require 'rubygems'
require 'HTTParty'
require 'uri'

module Cartelified

  include HTTParty
  base_uri "http://api.bigcartel.com"  
  headers 'Content-Type' => 'application/json' 

  def self.store_name(store_name)
    @id = store_name
  end
  
  def self.store_details
    result = self.fetch_store_details
  end
  
  def self.products_by_artist(artist)
    result = self.fetch_products(artist)
  end
  
  protected
  def self.fetch_products(artist)
    result = get("/#{@id}/products.js", :headers => {'Accept' => 'application/json'})
    return "Could not connect to server - #{result.response}" if result.code == 404
    products = []
    
    result.each do |product| 
      if not product['artists'].find_all {|i| i['name'].downcase == artist.downcase }.empty?
        products << product
      end
    end
    products
  end    
  
  def self.fetch_store_details
    get("/#{@id}/products.js", :headers => {'Accept' => 'application/json'})
  end    
  
  
end