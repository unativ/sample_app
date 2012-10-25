class SearchController < ApplicationController
  def new  
  end

  def search
    #@results = Micropost.where('match (content) against (?)', params[:query])
    #@results = Micropost.where("match (content) against ('#{params[:query]}')")
    @results = Micropost.find_by_sql("select * from microposts where match (content) against ('#{params[:query]}')")

    # SQL string: Check' )) or 1 = 1  -- 
  end
end
