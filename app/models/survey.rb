class Survey < ApplicationRecord
  belongs_to :survey_option
  validates_presence_of :name, :registration, :email
  validates :email, uniqueness: true, format: { with: /\b[A-Z0-9._%a-z\-]+@aluno\.uece\.br\z/,
                  message: "deve ser uma conta aluno.uece.br" }

  validates :registration, uniqueness: true, :numericality => {:only_integer => true}
  require 'csv'
  def first_name
    name.split(" ").first
  end

  def self.to_csv
    attributes = %w{id name email registration survey_option_id }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |survey|
        csv << attributes.map{ |attr| survey.send(attr) }
      end
    end
  end


end
