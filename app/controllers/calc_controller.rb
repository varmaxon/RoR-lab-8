class CalcController < ApplicationController
  def input
  end

  def view
    arr_x = params[:numbers]
    @input_data = arr_x
    if arr_x.match?(/^( ?)+(-?\d+(\.\d+)?)((?:\ +(-?\d+(\.\d+)?))+)?(\ +)?$/) then
      arr_x = arr_x.split(' ')
      arr_x.each_index { |item| arr_x[item] = arr_x[item].to_i }

      cnt_pos = 0.0
      cnt_neg = 0.0
      
      arr_x.each { |item|
        if item > 0 then cnt_pos += 1 
        elsif item < 0 then cnt_neg += 1
        end
      }
      if cnt_pos != 0 then @result = (cnt_neg / cnt_pos).round(3) 
      else @result = "ERROR: amount positive numbers is 0 => division by zero"
      end
    else @result = "ERROR - введите числа через пробел, не используя символы"
    end
  end
end
