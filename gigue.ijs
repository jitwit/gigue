NB. various definitions i find helpful

NB. letters
az =: a.{~97+i.26
AZ =: a.{~65+i.26
a09 =: a.{~48+i.10

NB. pala=: 0.5 0.5 0.5
NB. palb=: 0.5 0.5 0.5
NB. palc=: 1.0 1.0 1.0
NB. pald =: 0 0.33 0.67
NB. 
NB. plt =: 3 : '<. 255 * 1 <. 0 >. pala + palb * 2 o. 2p1 * pald + palc * y'
NB. 
NB. palette=: plt"0 (255 %~ i. _256)

NB. org mode utilities
link =: '[[file:'&, @ ,&']]'
linkf =: 4 : 0
  NB. x linkf y: write bytes y to file x. intended for org mode 
  y 1!:2 < x
  link x
)
linki =: 4 : 0
  NB. x linki y: write image y to file x. intended for org mode
  require 'ide/qt/qtlib'
  y writeimg_jqtide_ x
  link x
)
linkv =: 4 : 0
  NB. x linkv y: viewmat matrix y to file x. intended for org mode
  v =. VISIBLE_jviewmat_
  VISIBLE_jviewmat_ =: 0
  viewmat y
  2!:1 'cp ',(jpath '~user/temp/viewmat.png'),' ',x
  VISIBLE_jviewmat_ =: v
  link x
)