class HomeController < ApplicationController
  def index

    #list all of the qouetes!
    @quotes = Quote.all

  end

  def new

    # create a form that displays qoute info
    @quote = Quote.new

  end

  def create

    puts '-----Params-----'
    puts params
    puts '----------'
    #sumbit form
    @quote = Quote.create(
    :saying => params[:quote][:saying],
    :author => params[:quote][:author]
    )

  end

  def delete

    @quote = Quote.find(params[:quote][:id]).destroy

  end
end
