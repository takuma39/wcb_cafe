class ApplicationController < ActionController::Base

private
  def after_sign_in_path_for(resource)
    admins_root_path(resource)
  end

  #sign_out後のredirect先変更する。rootパスへ。rootパスはhome topを設定済み。
  def after_sign_out_path_for(resource)
    admins_root_path
  end
end
