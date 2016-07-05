class Lunch
  define_method(:initialize) do |budget, style|
    @budget = budget.to_f
    @style = style
  end

  carts = {"american" => "Steaks Fifth Avenue", "mediterranean" => "Aybla Grill"}


  define_method(:go_to_carts?) do
    if @budget >= 7
      return true
    else
      return false
    end
  end
  define_method(:cart_recommendation) do
    carts.fetch(@style)
  end
end
