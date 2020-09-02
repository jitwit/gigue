NB. various definitions i find helpful
require 'ide/qt/qtlib'

NB. letters
az =: a.{~97+i.26
AZ =: a.{~65+i.26
a09 =: a.{~48+i.10

NB. org mode utilities
link =: '[[file:'&, @ ,&']]'
linki =: 4 : 0
  NB. x linki y: write image y to file x. intended for org mode
  y writeimg_jqtide_ x
  link x
)
