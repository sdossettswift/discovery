class FirmController < ApplicationController
  before_action do
    require_login!
  end

  def create
    @firm = Firm.new
  end

  def new
    @firm = Firm.new
  end
end
