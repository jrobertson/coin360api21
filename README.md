# Introducing the Coin360Api21 gem

    require 'coin360api21'

    coin = Coin360Api21::Coin.new
    r = coin.historical :btc, date_start: 1620120300, period: '1h'
    r.length
    #=> 2 
    r[0]
    #=> {"price"=>56415.53, "volume"=>29825963239.686802, "market_cap"=>1054919300000, "timestamp"=>1620126000} 
    r = coin.historical :btc, date_start: 1620120300, date_end: 1620121200
    r = coin.historical :btc, date_start: 1620115500

    r = Coin360Api21::Global.new.latest
    #=> 

<pre>
{"cryptocurrencies"=&gt;4041,
 "markets"=&gt;24092,
 "exchanges"=&gt;275,
 "total_volume"=&gt;177202511004.28357,
 "total_market_cap"=&gt;2268510035966.863,
 "timestamp"=&gt;1620128400}
</pre>

## Resources

* coin360api21 https://rubygems.org/gems/coin360api21
* Cryptocurrency Market Data API https://api.coin360.com/

coin360 bitcoin crypto cryptocurrency cryptocoins prices
