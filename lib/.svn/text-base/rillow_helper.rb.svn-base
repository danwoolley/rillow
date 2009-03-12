module RillowHelper
 # The find_attribute helper method is to provide a easy eay to  find a attribute within the hash and array
 # Examples: 
 # rillow = Rillow.new ('your-zillow-service identifier')
 # result = rillow.get_search_results('2114 Bigelow Ave','Seattle, WA')
 # valuationRange = result.find_attribute 'valuationRange'
 def find_attribute(key,obj=nil)
   if obj==nil then 
     obj=self
   end
   if obj.is_a? Hash then
      obj.each { |k,v|
        if k==key then
          return v
        else
          result = find_attribute(key,v)
          if result != nil then
             return result
          end
        end
     }
   elsif obj.is_a? Array then
      obj.each {|o| 
        result  = find_attribute(key,o)
        if result !=  nil then
          return result       
        end 
      }
   end
   return nil
 end
end
