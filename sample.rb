require 'lib/rillow'
require 'pp'

rillow = Rillow.new('X1-ZWz1cqh83mlsej_1y8f9')

result = rillow.get_monthlypayments(350000, {:down => 15, :zip => '33432'})
pp result.to_hash

result = rillow.get_ratesummary
pp result.to_hash
