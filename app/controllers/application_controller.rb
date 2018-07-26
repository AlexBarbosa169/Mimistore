class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :apelido, :nascimento, :cpf, 
    								adress_attributes:[:rua,:bairro,:cidade,:estado,:cep,:id],
    							contacts_attributes:[:id, :tipo, :valor, :_destroy]])
  end

  #def configure_permitted_parameters
   # devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cpf])
  #end

end
