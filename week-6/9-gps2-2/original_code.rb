# U2.W5: Virus Predictor

# I worked on this challenge with: Maria Piper.

# EXPLANATION OF require_relative
# It lets you use a file under the same directory as the one you are working on, giving only the name of the file as the argument and not the file path.
#
require_relative 'state_data'

class VirusPredictor
  # initialize takes 5 arguments , and translate them to @instance variables. The arguments come from the state.data.rb file.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  # It calls the private instance methods predicted_deaths and speed_of_spreed and pass arguments to them from the instance variable.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  #
  def predicted_deaths
    # predicted deaths is solely based on population density
    # It creates a flow control with the @population_density as the condition and creates the local variable number_of_deaths
    # that will be equal to @population times a multiplier.

    case @population_density
    when 200
      number_of_deaths = (@population * 0.4).floor
    when 150
      number_of_deaths = (@population * 0.3).floor
    when 100
      number_of_deaths = (@population * 0.2).floor
    when 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # It takes to arguments, and initializes the local variable speed = 0 and then creates a flow control with @population
    # _density as the condition for changing the value os speed. The higher the @population_density is the higher the speed is.
    speed = 0.0

    case @population_density
    when 200
      speed += 0.5
    when 150
      speed += 1
    when 100
      speed += 1.5
    when 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state , data|
  VirusPredictor.new(state, data[:population_density], data[:population], data[:region], data[:regional_spread]).virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# This was a very interesting chalenge i learn a lot from it. First i learn how to create hashes using symbols, i also learn how to use require_relative , and the imporantce of hadeling @instance variables well in order to save memory. understanding the code was quite easy, i only had problems creating the call to print all the information for all states, but once Maria help realized that this was better to be done outside of the class and how to iterate the STATE_DATA hash everything was easy. I also have now a very good undrstanding on when and why to use private methods. finannly im now know that refatcoring dosent mean to rewirte everything, but it can be only small changes that do a lot of improvement.
