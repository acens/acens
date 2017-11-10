class Contact < MailForm::Base

  attribute :name, validate: true
  attribute :email, validate:  /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject, validate: true
  attribute :message, validaate: true

  def headers
    {
      subject: "[CONTATO SITE] - Novo email vindo do site",
      to: "contato.acens@gmail.com",
      from: email
    }
  end
end
