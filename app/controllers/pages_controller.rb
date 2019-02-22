class PagesController < ApplicationController
  def main
  end

  def schedule
    MyJob.new.delay.print_x
    redirect_to root_path, flash: { success: "job scheduled" }
  end
end