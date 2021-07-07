module CatsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      cats_path
    elsif action_name == 'edit' || action_name == 'update'
      cat_path
    end
  end
end
