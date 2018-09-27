module FormHelper
  def cancel_button
    link_to "Cancel", params[:action], class: "btn btn-light"
  end
end
