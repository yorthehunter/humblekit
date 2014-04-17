class FormTest < ApplicationController::Base
  attribute :name
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :check1
  attribute :check2
  attribute :radio2
  attribute :radio2
end