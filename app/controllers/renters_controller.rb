class RentersController < ApplicationController
  def index
    @renters = Renter.all
  end
end
