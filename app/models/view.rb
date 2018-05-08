class View < ApplicationRecord
  belongs_to  :job_posting, counter_cache: true
end
