class SessionsController < ApplicationController

    def new
    end

    def create
      user = User.find_by(nome: params[:session][:nome])
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:notice] = "Bem-vindo, #{user.nome}!"
        redirect_to root_path
      else
        flash[:alert] = "Usuário ou senha incorreta!"
        redirect_to root_path
      end
    end

    def destroy
      session[:user_id] = nil
      flash[:notice] = "Logged out"
      redirect_to root_path
    end

end