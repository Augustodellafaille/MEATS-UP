class Dinner < ApplicationRecord
	enum dish_type: [:entree, :main_course, :cheese, :dessert, :wine, :appitizer]
end
