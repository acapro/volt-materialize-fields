module Fields
  class TextController < Volt::ModelController
    def index
      # Default to text fields
      if attrs.respond_to?(:type)
        @type = attrs.type
      else
        @type = 'text'
      end

      # Get the name of the field by looking at the method scope
      @field_name = attrs.value_last_method.gsub(/^[_]/, '')
    end

    def index_ready
      set_label
    end

    # Find the parent reactive value that produced the value
    # (usually just model._field)
    def model
      attrs.value_parent
    end

    def icon?
      return attrs.icon.present?
    end
    
    def label
      return attrs.label || @field_name.titleize
    end

    def label_id
      return label.gsub(/\s+/, "").downcase
    end

    def set_label
      input_item = Element[".input-field[item=#{label_id}]"]
      input_item_id = input_item.find('input').attr('id')
      input_item.find('label').attr('for', input_item_id)
    end

    # Find the errors for this field
    def errors
      model.marked_errors[@field_name]
    end

    # When a field goes out of focus, then we want to start checking a field
    def blur
      attrs.value_parent.mark_field!(@field_name)
    end

    def marked
      model.marked_fields[@field_name]
    end
  end
end
