class FirmController < ApplicationController
  def create
    @firm = Firm.new
  end

  def new
    @firm = Firm.new
  end
end
