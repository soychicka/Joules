#==============================================================================
# Joules
#
# @description: Module for providing mass and weight formulas
# @author: Elisha Lai
# @version: 0.0.3 16/05/2015
#==============================================================================

# Mass and weight module (mass_weight.rb)

require_relative 'constants'

# weight: (union Int Float) -> Float
# Conditions:
#     PRE: mass >= 0
#          mass is in kilograms.
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in newtons.
# Purpose: Consumes a number, mass, and returns the calculated weight.
def weight(mass)
  return mass * FREE_FALL_ACCELERATION 
end

# mass: (union Int Float) -> Float
# Conditions:
#     PRE: weight >= 0
#          weight is in newtons. 
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in kilograms.
# Purpose: Consumes a numberm weight, and returns the calculated mass.
def mass(weight)
  return weight / FREE_FALL_ACCELERATION
end
