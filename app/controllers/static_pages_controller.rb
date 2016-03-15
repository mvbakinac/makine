class StaticPagesController < ApplicationController
  def Home
    @galleries = Gallery.all.order("created_at DESC")
  end

  def About
  end

  def Gallery
  end

  def Links
  end

  def Contact
  end
end
