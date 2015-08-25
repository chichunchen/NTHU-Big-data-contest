module UsersHelper
  def first_name user
    #name = user.name.scan /\w/
    first = user.name[0]
    size = user.name.length
    1..size.times do
      first = first + "o"
    end
    return first
  end

  def hide_full_name user
    unless current_user.group == user.group
      first_name user
    else
      user.name
    end
  end
end
