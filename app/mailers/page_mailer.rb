class PageMailer < ApplicationMailer
  default from: 'academy.web@ascheri.academy'
  def lavora_con_noi(nome_completo, professione, email, telefono, citta_e_cap, mat_special, prop_webinar)
    @nome_completo = nome_completo
    @professione = professione
    @email = email
    @telefono = telefono
    @citta_e_cap = citta_e_cap
    @mat_special = mat_special
    @prop_webinar = prop_webinar
    mail(to: 'codrin@ascheri.co.uk', subject: 'Lavora con noi request')
  end
end
