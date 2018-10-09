require "administrate/base_dashboard"

class CohortDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo.with_options(searchable: false),
    id: Field::Number.with_options(searchable: false),
    name: Field::String.with_options(searchable: true),
    start_date: Field::DateTime.with_options(searchable: false),
    end_date: Field::DateTime.with_options(searchable: false),
    course_id: Field::Number.with_options(searchable: false),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
    instructor: Field::String.with_options(searchable: true),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :start_date,
    :end_date,
    :instructor,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :name,
    :start_date,
    :end_date,
    :course_id,
    :created_at,
    :updated_at,
    :instructor,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :name,
    :start_date,
    :end_date,
    :course_id,
    :instructor,
  ].freeze

  # Overwrite this method to customize how cohorts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(cohort)
  #   "Cohort ##{cohort.id}"
  # end
end
