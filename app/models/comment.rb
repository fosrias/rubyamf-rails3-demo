class Comment < ActiveRecord::Base

  belongs_to :post

  belongs_to :action,
             :class_name => 'Action',
             :foreign_key => :code,
             :primary_key => :code

  validates_presence_of :action

end
