# frozen_string_literal: true

class PagesController < ApplicationController
  def permalink
    @page = Page.find_by(permalink: params[:permalink])

    redirect_to root_path if @page.nil?
  end
end
