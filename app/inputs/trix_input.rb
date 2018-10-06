class TrixInput < SimpleForm::Inputs::Base
  enable :placeholder, :maxlength, :minlength

  def input(wrapper_options = nil)
    merged_input_options = merge_wrapper_options(
      input_html_options,
      wrapper_options
    )
    template.capture do
      template.concat @builder.hidden_field(
        attribute_name,
        merged_input_options
      )
      template.concat template.content_tag("trix-editor", nil,
        input: input_html_options[:id])
    end
  end
end
