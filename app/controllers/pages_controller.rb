class PagesController < ApplicationController
  skip_before_action :require_user
  skip_before_action :require_admin
  def home
    @posts = Post.all.order('created_at DESC')
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
