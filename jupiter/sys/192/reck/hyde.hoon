!:
::          %hyde, zuse models.   This file is in the public domain.
::
|%
++  acro                                                ::  asym cryptosuite
          $_  ^?  |%                                    ::  opaque object
          ++  de  |+([a=@ b=@] *(unit ,@))              ::  symmetric de, soft
          ++  dy  |+([a=@ b=@] @)                       ::  symmetric de, hard
          ++  en  |+([a=@ b=@] @)                       ::  symmetric en
          ++  es  |+(a=@ @)                             ::  step key to next
          ++  ex  ^?                                    ::  export
            |%  ++  fig  @uvH                           ::  fingerprint
                ++  pac  @uvG                           ::  default passcode
                ++  pub  *pass                          ::  public key
                ++  sec  *ring                          ::  private key
            --                                          ::
          ++  mx  @                                     ::  max direct bytes
          ++  nu  ^?                                    ::  reconstructors
            |%  ++  pit  |=([a=@ b=@] ^?(..nu))         ::  from [width seed]
                ++  nol  |=(a=@ ^?(..nu))               ::  from naked ring
                ++  com  |=(a=@ ^?(..nu))               ::  from naked pass
            --                                          ::
          ++  pu  ^?                                    ::  public-key acts
            |%  ++  seal  |=([a=@ b=@] @)               ::  encrypt
                ++  sure  |=([a=@ b=@] *(unit ,@))      ::  authenticate
            --                                          ::
          ++  se  ^?                                    ::  secret-key acts
            |%  ++  sign  |=([a=@ b=@] @)               ::  certify
                ++  tear  |=(a=@ *(unit ,[p=@ q=@]))    ::  accept
            --                                          ::
          --                                            ::
++  arch                                                ::  fs node
          $%  [& clod]                                  ::  ie, file
              [| dirt]                                  ::  ie, directory
          ==                                            ::
++  ball  ,@uw                                          ::  statement payload
++  band  ,@uvH                                         ::  network message id
++  bait  ,[p=skin q=@ud r=dove]                        ::  fmt nrecvd spec
++  bath                                                ::  outgoing per client
          $:  ski=snow                                  ::  sequence state
              foy=flow                                  ::  flow statistics
              par=(map soap putt)                       ::  message by id
              maz=(qeu soap)                            ::  round-robin next
              air=(map flap ,@ud)                       ::  unacked by content
              sea=shed                                  ::  packet pump
          ==                                            ::
++  bear  ,[p=(map path goal) q=boar]                   ::  process with slips
++  bird                                                ::  packet in flight
          $:  gom=soap                                  ::  message identity
              mup=@ud                                   ::  pktno in msg
              org=?                                     ::  original tx?
              tim=@dr                                   ::  logical timer
              ded=@da                                   ::  next expire
              pac=rock                                  ::  packet data
          ==                                            ::
++  boar                                                ::  process at system
          $%  :*  %&                                    ::  waiting (system)
                  p=(list path)                         ::  blocked on
                  q=(qeu ,[p=path q=note])              ::  pending events
                  r=worm                                ::  userspace task
              ==                                        ::
              [%| p=(list path) q=lark]                 ::  pending process
          ==                                            ::
++  boat  ,[(list slip) task]                           ::  user stage
++  bond  (list post)                                   ::  atomic statement
++  boon                                                ::  fort output
          $%  [%beer p=lord q=@uvG]                     ::  gained ownership
              [%coke p=cape q=soap]                     ::  message conclusion
              [%mead p=rock]                            ::  accept packet
              [%milk p=sock q=@da r=bond]               ::  learn bindings
              [%ouzo p=lane q=rock]                     ::  transmit packet
              [%sack p=sock q=cape r=band]              ::  send ack
              [%wine p=lord]                            ::  lost ownership
          ==                                            ::
++  bowl  ,[p=(list card) q=(unit boat)]                ::  standard product
++  bran  ,[p=mark q=(unit mark) r=lord]                ::  version parent id
++  brow  ,[p=@da q=@tas]                               ::  browser version
++  buck  ,[p=mace q=will]                              ::  all security data
++  cake  ,[p=lord q=? r=skin s=@]                      ::  top level packet
++  cape                                                ::  end-to-end result
          $?  %dead                                     ::  maybe undelivered
              %good                                     ::  delivered
              %weak                                     ::  rejected
          ==                                            ::
++  card                                                ::  event
          $%  [%bbye ~]                                 ::  log out
              [%bind p=lord q=host]                     ::  bind http server
              [%boot p=@]                               ::  reset soft state
              [%cash p=@p q=buck]                       ::  civil license
              [%crap p=(list)]                          ::  error with trace
              [%dire p=@tas q=dram]                     ::  apply directory
              [%dump p=(list ,@t)]                      ::  raw text lines
              [%edit p=@p q=@tas r=(list ukaz)]         ::  commit edits
              [%file p=@tas q=@]                        ::  apply atomic file
              [%hear p=@]                               ::  receive packet
              [%helo ~]                                 ::  ready to prompt
              [%init p=@p]                              ::  initialize revs
              [%junk p=@]                               ::  entropy
              [%kill p=@ud]                             ::  kill a process
              [%line p=@t]                              ::  source line
              [%load p=@tas q=path]                     ::  request atomic file
              [%logn p=@p q=chum]                       ::  name hashed-pass
              [%logp p=@p]                              ::  privileged login
              [%loot p=@tas q=path]                     ::  request directory
              [%make p=@t q=@ud r=@]                    ::  wild license
              [%mine p=@ud q=@t]                        ::  query matched line
              [%nuke p=~]                               ::  kill all processes
              [%pace p=@ud]                             ::  compute background
              [%pour p=path q=dram]                     ::  write directory
              [%pump ~]                                 ::  produce packets
              [%save p=path q=@]                        ::  write atomic file
              [%send p=@]                               ::  transmit packet
              [%ship p=@tas q=@tas]                     ::  label release
              [%sync ~]                                 ::  reset soft state
              [%talk p=tank]                            ::  show on console
              [%text p=tape]                            ::  talk leaf
              [%that p=love]                            ::  cooked htresp
              [%thee p=hate]                            ::  cooked htreq
              [%thin p=httq]                            ::  insecure raw htreq
              [%this p=httq]                            ::  secure raw htreq
              [%thou p=httr]                            ::  raw http response
              [%tory p=(list ,@t)]                      ::  history dump
              [%warn p=?(0 1 2) q=tank]                 ::  report to human
              [%word p=chum]                            ::  set password
          ==                                            ::
++  cask                                                ::  symmetric record
          $:  yed=(unit ,[p=hand q=code])               ::  outbound
              heg=(map hand code)                       ::  proposed 
              qim=(map hand code)                       ::  inbound
          ==                                            ::
++  clod  ,[p=@da q=@uvI r=*]                           ::  mtime hash content
++  coal  ,*                                            ::  untyped vase
++  code  ,@uvI                                         ::  symmetric key
++  cone  ,[p=(list ,@tas) q=(list ,[p=@tas q=crow])]   ::  bits and options
++  conf  ,[p=(set ,@tas) q=(map ,@tas ,*)]             ::  bits and options
++  corp  ,[p=@t q=@t r=@tas]                           ::  name auth country
++  chum  ,@uvI                                         ::  hashed passcode
++  cred  ,[p=logo q=(map ,@tas ,[p=@da q=@ta])]        ::  client credentials
++  crow                                                ::  shell expression
          $%  [%f p=path]                               ::  file by path
              [%c p=crow q=(list crow)]                 ::  function call
              [%g p=(list path) q=gene]                 ::  gene w/libs
              [%l p=(list crow)]                        ::  list
              [%p p=(list crow)]                        ::  tuple
              ::  [%m p=(list crow)]                    ::  map?
              ::  [%s p=(list crow)]                    ::  set?
          ==                                            ::
++  csrf  ,@uvH                                         ::  CSRF secret
++  deed  ,[p=@ q=step]                                 ::  signature, stage
++  desk                                                ::  project state
          $:  lab=(map ,@tas ,@ud)                      ::  labels
              let=@                                     ::  (lent hit)
              hit=(list ,[p=@da q=ukaz r=arch])         ::  history
          ==                                            ::
++  dirt  ,[p=@da q=(map ,@ta arch)]                    ::  mtime tree
++  dock  $:                                            ::  process state
              p=tick                                    ::  process counter
              q=(map tick bear)                         ::  process table
          ==                                            ::
++  door                                                ::  foreign contact
          $:  wod=road                                  ::  connection to
              fer=road                                  ::  inferred conn from
              caq=cask                                  ::  symmetric key state
          ==                                            ::
++  dove  ,[p=@ud q=(map ,@ud (unit ,@))]               ::  count 13-blocks
++  flap  ,@uvH                                         ::  network packet id
++  flow                                                ::  packet connection
          $:  rtt=@dr                                   ::  official rtt
              wid=@ud                                   ::  logical wdow msgs
              yed=@ud                                   ::  actual wdow msgs
          ==                                            ::
++  fort                                                ::  formal state
          $:  wen=@da                                   ::  next wakeup
              ton=town                                  ::  security
              zac=(map lord oven)                       ::  flows by server
          ==                                            ::
++  gcos                                                ::  id description
          $%  [%czar p=@t]                              ::  8-bit lord
              [%duke p=what]                            ::  32-bit lord
              [%jack p=what]                            ::  64-bit lord
              [%king p=@t]                              ::  16-bit lord
              [%pawn p=@t]                              ::  128-bit lord
          ==                                            ::
++  goal                                                ::  app request
          $%  [%ez p=path]                              ::  simple query
              [%fu p=path q=|+(* *(unit))]              ::  complex query
              [%ht p=rout]                              ::  http server
              [%up p=prod]                              ::  user prompt      
              [%wa p=@da]                               ::  alarm
          ==                                            ::
++  gram  ,@uw                                          ::  physical datagram
++  hand  ,@uvH                                         ::  hash of code
++  hate  ,[p=purl q=cred r=moth]                       ::  cooked request
++  hook  path                                          ::  request origin
++  hort  ,[p=(unit ,@ud) q=host]                       ::  http port/host
++  host  $%([& p=(list ,@t)] [| p=@if])                ::  http host
++  httq                                                ::  raw http request
          $:  p=?(%get %post)                           ::  method
              q=@t                                      ::  unparsed url
              r=(list ,[p=@t q=@t])                     ::  headers
              s=(unit octs)                             ::  body
          ==                                            ::
++  httr  ,[p=@ud q=mess r=(unit octs)]                 ::  raw http response   
++  lark                                                ::  parsed command
          $%  [%cd p=path]                              ::  change directory
              [%eh p=crow]                              ::  print and record
              [%go p=path q=cone r=crow]                ::  run application
              [%kl p=tick]                              ::  kill a process
              [%nk ~]                                   ::  kill all processes
              [%ps ~]                                   ::  list processes
              [%to p=crow]                              ::  type only
          ==                                            ::
++  lens  ?(%z %y %x %w)                                ::  repository view
++  lice  ,[p=lord q=buck]                              ::  full license
++  lint  (list rock)                                   ::  fragment array
++  lane                                                ::  packet route
          $%  [%if p=@ud q=@if]                         ::  IP4/public UDP/addr
              [%is p=@ud q=@is]                         ::  IP6/public UDP/addr
          ==                                            ::
++  link  ,[p=code q=sock]                              ::  connection
++  logo  ,@uvI                                         ::  session identity
++  lord  ,@p                                           ::  identity
++  love  $%                                            ::  http response
              [%ham p=manx]                             ::  html node
              [%mid p=mime q=octs]                      ::  mime-typed data
              [%raw p=httr]                             ::  raw http response
          ==                                            ::
++  mace  (list ,[p=mark q=ring])                       ::  private secrets
++  mane  $|(@tas [@tas @tas])                          ::  XML name/space
++  manx  ,[t=marx c=marl]                              ::  XML node
++  mark  ,@ud                                          ::  regime number
++  marl  (list manx)                                   ::  XML node list
++  mart  (list ,[n=mane v=tape])                       ::  XML attributes
++  marx  $|(@tas [mane a=mart])                        ::  XML tag
++  math  (map ,@t (list ,@t))                          ::  semiparsed headers
++  meal                                                ::  payload
          $%  [%back p=cape q=flap r=@dr]               ::  acknowledgment
              [%bond p=lord q=(list post)]              ::  statement
              [%buck p=mace q=will]                     ::  license
              [%carp p=@ud q=@band r=@]                 ::  leaf fragment
              [%ping ~]                                 ::  no-op
          ==                                            ::
++  mess  (list ,[p=@t q=@t])                           ::  raw http headers
++  meta                                                ::  path metadata
          $%  [& p=@da q=@uvI]                          ::  mtime hash
              [| p=@da q=(list ,@ta)]                   ::  mtime dir
          ==                                            ::
++  meth  ?(%get %post)                                 ::  http method
++  moth  ,[p=meth q=math r=*]                          ::  http operation
++  move  ,[p=(unit lord) q=vein r=card]                ::  internal event
++  mime  (list ,@ta)                                   ::  mime type
++  name  ,[p=@t q=(unit ,[p=? q=@t]) r=@t]             ::  first mid/nick last
++  nope  ^~(^-(arch [%| @ ~]))                         ::  empty node
++  note                                                ::  app response
          $%  [%ez p=path q=(unit)]                     ::  simple result
              [%fu p=path q=(unit)]                     ::  complex result
              [%ht p=hate]                              ::  legacy request
              [%up p=@t]                                ::  prompt response
              [%wa p=@da]                               ::  alarm
          ==                                            ::
++  octs  ,[p=@ud q=@]                                  ::  octet-stream
++  oven                                                ::  flow by server
          $:  wen=@da                                   ::  next activation
              nys=(map band ,[p=@da q=bait])            ::  incoming
              wab=(map lord bath)                       ::  outgoing by client
          ==                                            ::
++  ovum  ,[p=path q=card]                              ::  external event
++  plea  ,[p=@ud q=[p=? q=@t]]                         ::  live prompt
++  pork  ,[p=(unit ,@ta) q=path]                       ::  fully parsed url
++  post  ,[p=path q=*]                                 ::  statement
++  prod  ,[p=prom q=tape]                              ::  format, prompt
++  prom  ,?                                            ::  format type
++  purl  ,[p=hort q=pork r=quay]                       ::  parsed url
++  putt                                                ::  outgoing message
          $:  ski=snow                                  ::  sequence acked/sent
              saq=?                                     ::  secure ack required
              ryn=(unit lane)                           ::  implied mirror lane
              wyv=(list rock)                           ::  packet list XX gear
          ==                                            ::
++  quay  (map ,@t ,@t)                                 ::  parsed url query
++  quri                                                ::  request-uri
          $%  [& p=purl]                                ::  absolute
              [| p=pork q=quay]                         ::  relative
          ==                                            ::
++  rank  ?(%czar %king %duke %jack %pawn)              ::  lord width class
++  road                                                ::  secured oneway route
          $:  exp=@da                                   ::  expiration date
              lun=(unit lane)                           ::  route to friend
              lew=will                                  ::  will of friend
          ==                                            ::
++  roof  (map ,@p room)                                ::  revision control
++  room                                                ::  author by lord
          $:  own=?                                     ::  local/foreign
              dos=(map ,@ta desk)                       ::  projects 
          ==                                            ::
++  rock  ,@uvO                                         ::  packet
++  rout  ,[p=(list host) q=(list path)]                ::  http route
++  safe                                                ::  domestic host
          $:  loc=(unit lane)                           ::  packet route
              val=wand                                  ::  private keys
              law=will                                  ::  server will
              seh=(map hand ,[p=lord q=@da])            ::  key cache
              hoc=(map lord door)                       ::  friends & relations
          ==                                            ::
++  salt  ,@uv                                          ::  entropy
++  shed  ,[p=@da q=(qeu ,[p=@ud q=bird])]              ::  packet pump
++  sink                                                ::  incoming per server
          $:  nes=(map band ,[p=@da q=bait])            ::  fragment actions
          ==                                            ::
++  skin  ?(%none %open %fast %full)                    ::  encoding stem
++  slip  ,[p=path q=goal]                              ::  traceable request
++  snow  ,[p=@ud q=@ud r=(set ,@ud)]                   ::  window exceptions
++  soap  ,*                                            ::  opaque msg identity
++  sock  ,[p=lord q=lord]                              ::  from to
++  step  ,[p=bran q=gcos r=pass]                       ::  identity stage
++  task  _|+([@da path note] *bowl)                    ::  process core
++  taxi  ,[p=lane q=rock]                              ::  routed packet
++  tick  ,@ud                                          ::  process id
++  tray  ,[p=(unit lane) q=meal]                       ::  routed payload
++  town                                                ::  all security state
          $:  lit=@ud                                   ::  imperial modulus
              any=@                                     ::  entropy
              urb=(map lord safe)                       ::  all keys and routes
          ==                                            ::
++  vein  (list path)                                   ::  causal history
++  ukaz                                                ::  change (pl ukazy)
          $:  p=path                                    ::  change site
              ^=  q                                     ::  change content
              $%  [%del p=@uvI]                         ::  delete old-hash
                  [%set p=@uvI q=@uvI r=*]              ::  new old data
              ==                                        ::
          ==                                            ::
++  umaz  ,[p=(list ukaz) q=(list ukaz)]                ::  dual change
++  wand  (list ,[p=mark q=acro])                       ::  mace in action
++  what                                                ::  logical identity
          $%  [%crew p=corp]                            ::  business
              [%dept p=corp]                            ::  govt/education
              [%fair p=corp]                            ::  nonprofit
              [%home p=corp]                            ::  family
              [%holy p=corp]                            ::  religious
              [%lady p=whom]                            ::  female individual
              [%lord p=whom]                            ::  male individual
              [%punk p=@t]                              ::  fictitious id
          ==                                            ::
++  whom  ,[p=@ud q=@t r=@tas s=name]                   ::  yob/state/nation/me
++  will  (list deed)                                   ::  certificate
++  worm  ,*                                            ::  vase of task
--
