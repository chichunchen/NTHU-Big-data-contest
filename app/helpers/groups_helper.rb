module GroupsHelper
  def show_current_file file
    unless file
      return "目前尚無上傳檔案"
    else
      return file
    end
  end
end
