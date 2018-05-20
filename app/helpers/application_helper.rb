module ApplicationHelper
  def is_admin_user
    if current_user.userable_type != "Admin"
      return false
    end
    return true
  end

  def is_master_user
    if current_user.userable_type != "Master"
      return false
    end
    return true
  end
end
