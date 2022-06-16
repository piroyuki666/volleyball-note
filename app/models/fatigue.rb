class  Fatigue < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '軽め' },
    { id: 3, name: 'まあまあ' },
    { id: 4, name: '重め' }
  ]

  include ActiveHash::Associations
  has_many :trainings
end
