require "administrate/base_dashboard"

class VenueDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    events: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    address: Field::String,
    phone_number: Field::String,
    website: Field::String,
    city: Field::String,
    zip: Field::String,
    state: Field::String,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :events,
    :name,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :events,
    :name,
    :address,
    :phone_number,
    :website,
    :city,
    :zip,
    :state,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :address,
    :phone_number,
    :website,
    :city,
    :zip,
    :state,
  ]

  # Overwrite this method to customize how venues are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(venue)
    "#{venue.name}"
  end
end
