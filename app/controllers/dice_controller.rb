class DiceController < ApplicationController

  def infinity_and_beyond
    @array_of_rolls = Array.new
    
    @num_dice = params.fetch("num_dice").to_i
    @sides_dice = params.fetch("sides_dice").to_i
    
    @num_dice.times do
      @array_of_rolls.push(rand(@sides_dice)+1)  
    end    

    render({:template => "dice_templates/infinity.html.erb"})
  end
end
