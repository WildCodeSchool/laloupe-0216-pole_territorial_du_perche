class ScotJadhere < ActiveRecord::Base
  belongs_to :scot_message
  belongs_to :contributeur
end
