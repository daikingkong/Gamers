class ApplicationController < ActionController::Base
  before_action :config_premitted_parameters, if: :devise_controller?
  #devise利用の機能が使われる前にconfigure_permitted_parametersメソッドが実行"

  protected
  #呼び出された他のコントローラからも参照できます。

  def config_premitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    # sign_upの際に、ユーザー名nameのデータ操作を許可しています。
  end

  def user_sign_in_path_for(resource)
    users_path
  end

  def user_sign_out_path_for(resource)
    root_path
  end
end
