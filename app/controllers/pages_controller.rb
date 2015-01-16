class PagesController < ApplicationController
  include HighVoltage::StaticPage

  layout :layout_for_page

  private

  def layout_for_page
    case params[:id]
      when 'sandbox'
        'barebones'
      when 'basic-testing'
        'barebones'
      else
        'application'
    end
  end
end