require_dependency "nyros_form2/application_controller"

module NyrosForm2
  class FailuresController < ApplicationController
    def index
    	@failures = Failure.all
    end
  end
end
