class Station < ApplicationRecord
	serialize :line_ids, Array
end
