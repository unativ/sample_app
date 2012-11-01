class SearchController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user, only: :destroy

  def new  
  end

  def search
    #@results = Micropost.where('match (content) against (?)', params[:query])
    #@results = Micropost.where("match (content) against ('#{params[:query]}')")
    #@results = Micropost.find_by_sql("select * from microposts where match (content) against ('#{params[:query]}')")




    # SQL injection
    @results = Micropost.where("content LIKE '%#{params[:query]}%'").all
    
    # good (but still % injection)
    #@results = Micropost.where('content LIKE ?', "%#{params[:query]}%").all
   
    #unless params[:token].nil?
      #User.where(:email => params[:email], :remember_token => params[:token]).all
    #end 
    
    t = []
    t.push(nil)

    #@results = Micropost.where(:content => params[:query]).all

    # SQL string: 
    # a' ) or 1 = 1  --  
    # XXX') union select 1, email, 1, 1, 1 from users --  
    # XXX') union select 1, remember_token, 1, 1, 1 from users --  
    #
  end
end
