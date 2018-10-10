require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number.with_options(searchable: false),
    email: Field::String.with_options(searchable: true),
    encrypted_password: Field::String.with_options(searchable: false),
    reset_password_token: Field::String.with_options(searchable: false),
    reset_password_sent_at: Field::DateTime.with_options(searchable: false),
    remember_created_at: Field::DateTime.with_options(searchable: false),
    first_name: Field::String.with_options(searchable: true),
    last_name: Field::String.with_options(searchable: true),
    age: Field::String.with_options(searchable: false),
    education: Field::String.with_options(searchable: false),
    url: Field::String.with_options(searchable: false),
    type: Field::String.with_options(searchable: false),
    salary: Field::Number.with_options(searchable: false),
    cohort_id: Field::Number.with_options(searchable: true),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :first_name,
    :last_name,
    :email,
    :type
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :email,
    :first_name,
    :last_name,
    :age,
    :education,
    :url,
    :type,
    :salary,
    :cohort_id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :first_name,
    :last_name,
    :age,
    :education,
    :url,
    :type,
    :salary,
    :cohort_id,
  ].freeze

  # Overwrite this method to customize how admin users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(admin_user)
  #   "AdminUser ##{admin_user.id}"
  # end
end
