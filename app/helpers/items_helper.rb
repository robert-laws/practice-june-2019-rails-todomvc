# frozen_string_literal: true

module ItemsHelper
  def li_class_for_item(item)
    'completed' if item.complete?
  end

  def li_for_item(item)
    tag.li class: ['list-group-item py-3', li_class_for_item(item)] do
      yield
    end
  end

  def form_for_item_status(item)
    form_for [item.list, item], html: { class: 'check-form' } do |f|
      f.check_box :status, class: 'toggle', checked: item.complete?
    end
  end
end
