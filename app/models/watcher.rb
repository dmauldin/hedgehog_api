class Watcher < ApplicationRecord
  belongs_to :user
  belongs_to :ticket

  # TODO(dmauldin): this should eventually include notification settings
  #                 ie: do you want email, do you want dashboard, or
  #                 are you only referencing this so you can find it later?

end
