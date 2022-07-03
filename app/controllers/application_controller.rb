class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:alert] = "Login necessário!"
            redirect_to login_path
        end
    end

    def require_coordenador
        if logged_in? && !current_user.coordenador
            flash[:alert] = "Tela apenas para coordenadores!"
            redirect_to root_path
        end
    end
end
