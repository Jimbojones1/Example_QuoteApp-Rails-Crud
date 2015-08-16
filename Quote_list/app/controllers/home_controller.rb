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

    #sumbit form
    @quote.create(
    :saying => 'test',
    :author => 'Jerry Garcia'
    )

  end

  def delete

    @quote.find(1).destroy

  end
end
