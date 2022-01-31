# frozen_string_literal: true

ActiveAdmin.register Lunch do
  permit_params :name, :description, :scheduled_to

  form html: { autocomplete: false } do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :scheduled_to, as: :datepicker, html: { readonly: true }
    end
    actions
  end
end
