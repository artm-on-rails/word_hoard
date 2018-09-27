module FormHelper
  def cancel_button
    link_to "Cancel", @card, class: "btn btn-light"
  end
end
