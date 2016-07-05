class MyHash
  define_method(:initialize) do
    @my_hash = []
  end

  define_method(:my_hash) do
    @my_hash
  end

  define_method(:myStore) do |key, value|
    kv_array = [key,value]
    @my_hash.push(kv_array)
  end

  define_method(:myFetch) do |key|
    @my_hash.each do |kv_array|
      if kv_array[0] == key
        return kv_array[1]
      end
    end
  end

end
