class PagesController < ApplicationController
  skip_before_action :require_user
  skip_before_action :require_admin
  def home
    @posts = Post.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end

  def academy
    @page_title = 'La Academy'
    @speakers = Speaker.all
  end

  def formazione
    @page_title = 'Formazione'
    @categories = Category.all
    @category = Category.first
    @webinars = Webinar.paginate(page: params[:webinars_page], per_page: 8).order('date_from ASC')
  end

  def notizie
    @page_title = 'Ultime Notizie'
    @posts = Post.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end

  def supporto
    @page_title = 'Supporto'
  end

  def contatti
    @page_title = 'Contatti'
  end

  def lavora
   nome_completo = params[:nome_completo ]
   professione = params[:professione]
   email = params[:email]
   telefono = params[:telefono]
   indirizzo = params[:indirizzo]
   citta_e_cap = params[:citta_e_cap]
   mat_special = params[:mat_special]
   prop_webinar = params[:prop_webinar]
   PageMailer.lavora_con_noi(nome_completo, professione, email, telefono, citta_e_cap, mat_special, prop_webinar).deliver
   flash[:success] = "Request sent successfully"
   redirect_to academy_path()
   end
end
