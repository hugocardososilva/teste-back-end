module ApplicationHelper
  def pluralize_model(model)
    model.name.humanize.pluralize
  end

  def singularize_controller(controller)
    controller.name.singularize
  end

  def title
    "#{ action_name.capitalize} - #{controller_name.singularize.capitalize}"
  end
end
