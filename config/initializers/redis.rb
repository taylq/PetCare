# $redis_onlines = Redis.new
# it's the simplest way, but i'd recommend:
$redis_onlines = Redis.new
# => hiredis driver more fast
# => use unix domain socket if it's possible
# => default db is No.0, but it is better to use a specific database
#    and No.0 leave for testing-development-and-more-and-more
