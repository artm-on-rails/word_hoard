module FormHelper
  def cancel_button
    link_to "Cancel", ".", class: "btn btn-light"
  end
end
