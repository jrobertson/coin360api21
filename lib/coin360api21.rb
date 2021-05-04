#!/usr/bin/env ruby

# file: coin360api21.rb

require 'json'
require 'excon'
require 'unichron'


module Coin360Api21

  class Coin

    def initialize()
      @url_base = 'https://api.coin360.com'
    end

    # returns the historical price for a given coin
    #   if no date is provided, returns the previous 17 days
    #   if no period is provided, defaults to a 5 minute period
    #
    # Examples
    #   historical :btc
    #   historical :btc, date_start: 1620120300
    #   historical :btc, date_start: 1620120300, period: '1h'
    #   historical :btc, date_start: 1620120300, date_end: 1620121200
    #
    def historical(coin, date_start: nil, date_end: nil, period: nil)

      params = ['coin=' + coin.to_s]
      params << 'start=' + timeify(date_start) if date_start
      params << 'end=' + timeify(date_end) if date_end
      params << 'period=' + period if period
      api_call "/coin/historical?%s" % [params.join('&')]

    end

    private

    def api_call(api_request)
      
      response = Excon.get(@url_base + api_request)
      JSON.parse(response.body)
  
    end

    def timeify(obj) 
      Unichron.new(obj).to_time.to_i.to_s
    end

  end

  class Global

    def initialize()
      @url_base = 'https://api.coin360.com'
    end

    def latest()
      api_call '/global/latest'
    end

    private

    def api_call(api_request)
      
      response = Excon.get(@url_base + api_request)
      JSON.parse(response.body)
  
    end

  end
end

