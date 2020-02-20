class PagesController < ApplicationController
  skip_before_action :require_user
  skip_before_action :require_admin
  def home
    @posts = Post.all.order('created_at DESC')
  end

  def academy
    @page_title = 'La Academy'
  end

  def corsi
    @page_title = 'Corsi'
    @categories = Category.all
    @category = Category.first
  end

  def notizie
    @page_title = 'Ultime Notizie'
    @posts = Post.all.order('created_at DESC')
  end

  def supporto
    @page_title = 'Supporto'
  end

  def contatti
    @page_title = 'Contatti'
  end
end
