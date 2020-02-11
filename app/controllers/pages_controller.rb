class PagesController < ApplicationController
  def home
  end

  def academy
  end

  def corsi
  end

  def notizie
    @posts = Post.all.order('created_at DESC')
  end

  def supporto
  end

  def contatti
  end
end
