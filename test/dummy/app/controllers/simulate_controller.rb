class SimulateController < ApplicationController
  def failure
  	raise "simulating an exception"
  end
end
