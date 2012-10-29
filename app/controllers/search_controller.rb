class SearchController < ApplicationController
  def new  
  end

  def search
    #@results = Micropost.where('match (content) against (?)', params[:query])
    #@results = Micropost.where("match (content) against ('#{params[:query]}')")
    #@results = Micropost.find_by_sql("select * from microposts where match (content) against ('#{params[:query]}')")




    # SQL injection
    @results = Micropost.where("content LIKE '%#{params[:query]}%'").all
    
    # good (but still % injection)
    #@results = Micropost.where('content LIKE ?', "%#{params[:query]}")
   
    #unless params[:token].nil?
      #User.where(:email => params[:email], :remember_token => params[:token]).all
    #end 
    
    t = []
    t.push(nil)

    #@results = Micropost.where(:content => params[:query]).all

    # SQL string: Check' )) or 1 = 1  -- 
    # ') union select name, email, remember_token, 4, 5 from users -- 
    # ') union select name, remember_token, 3, 4, 5 from users -- 
  end
end
