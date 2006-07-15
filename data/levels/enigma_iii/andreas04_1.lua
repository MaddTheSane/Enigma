-- Laser Castle, a level for Enigma
-- Copyright (C) 2006 Andreas Lochmann
-- Licensed under GPL v2.0 or above 
-- Created with the help of BBE 1.05

-- Thanks to Karen for her great idea for easy-mode:
--   Of course a Castle needs a flag!

Require("levels/lib/ant.lua")
function file_oxyd(x,y,f)
    oxyd_default_flavor=f
    oxyd(x,y)
end
levelh=52
levelw=20
enigma.FlatForce=30
enigma.SlopeForce=30
enigma.ElectricForce=30
cells={}
items={}
actors={}
stones={}
actors[" "]=cell{}
stones[" "]=cell{}
cells[" "]=cell{}
items[" "]=cell{}
cells["!"]=cell{floor="fl-water"}
cells["#"]=cell{floor="fl-leaves"}
stones["!"]=cell{stone="st-greenbrown"}
cells["$"]=cell{floor="fl-abyss"}
cells["%"]=cell{floor="fl-normal"}
cells["&"]=cell{floor="fl-gradient12"}
cells["'"]=cell{floor="fl-gradient4"}
cells["("]=cell{floor="fl-gradient11"}
cells[")"]=cell{floor="fl-gradient2"}
stones["#"]=cell{stone="st-stoneimpulse"}
cells["*"]=cell{floor="fl-gradient1"}
-- cells["+"]=cell{floor="fl-rock1"}
cells["+"]=cell{floor="fl-rock"}
items["!"]=cell{item="it-trigger"}
stones["$"]=cell{stone="st-rock1_move"}
cells[","]=cell{floor="fl-gradient6"}
cells["-"]=cell{floor="fl-gradient8"}
stones["%"]=cell{stone="st-rock1"}
items["#"]=cell{item="it-seed_nowood"}
stones["&"]=cell{stone="st-fourswitch"}
cells["."]=cell{floor="fl-gradient10"}
cells["/"]=cell{floor="fl-gradient3"}
cells["0"]=cell{floor="fl-gradient7"}
stones["'"]=cell{parent={{file_oxyd,"a"}}}
stones["("]=cell{stone="st-mirror-p-t"}
-- cells["1"]=cell{floor="fl-rock2"}
cells["1"]=cell{floor="fl-rock"}
items["$"]=cell{item="it-wormhole"}
-- items["$"]=cell{item="it-vortex"}
cells["2"]=cell{floor="fl-gradient5"}
cells["3"]=cell{floor="fl-gradient9"}
stones[")"]=cell{stone="st-knight"}
stones["*"]=cell{stone="st-black4"}
items["%"]=cell{item="it-hammer"}
stones["+"]=cell{stone="st-laser-w"}
function ac_blackball(x,y)
n=""
p=0
f=0
 if (x==10) and (y==28) then
  n="ac10x28"
  p=0
  mf=1
 end
set_actor("ac-blackball",x+0.5,y+0.5,{player=p,name=n,mouseforce=mf})
end
actors["!"]=cell{parent={{ac_blackball}}}
items["&"]=cell{item="it-document"}
function ac_top(x,y)
n=""
r=0
f=0
 init=false
 if (x==10) and (y==47) then
  n="ac10x47"
  r=10
  f=10
  init=FALSE
 end
 if (x==12) and (y==44) then
  n="ac12x44"
  r=10
  f=10
  init=FALSE
 end
set_actor("ac-top",x+0.5,y+0.5,{range=r,force=f,name=n,gohome=init})
end
actors["#"]=cell{parent={{ac_top}}}
-- actors["#"]=cell{parent={{ac_rotor}}}
stones[","]=cell{stone="st-mirror-p\\t"}
stones["-"]=cell{stone="st-laser-n"}
stones["."]=cell{stone="st-laser-s"}
stones["/"]=cell{stone="st-mirror-p/t"}
stones["0"]=cell{stone="st-laser-e"}
items["'"]=cell{item="it-seed"}
stones["1"]=cell{stone="st-mirror-p|t"}
stones["5"]=cell{stone="st-door-v"}
stones["6"]=cell{stone="st-stoneimpulse-hollow"}
items["("]=cell{item="it-extralife"}
level={"!!!!!!!!!!!!!!!!!!!!",
       "!!!######!!!!###!!!!",
       "!!#&))).#!!!######!!",
       "!##'###/#####&))).#!",
       "!##'#+#/#####'###/##",
       "!##'#+#0)))).'#+#/##",
       "!##'########0-#+#/#!",
       "!!#(*,#++++######/#!",
       "!!###'#++++++#+1+/#!",
       "!!!##'#++++++####/#!",
       "!!!##'#+1+11++++#/#!",
       "!!!##'#++++#++++#/##",
       "!!###'#+++#+#1++#/##",
       "!!#&)-#++++#+1++#/##",
       "!##'###++1+1++++#0))",
       "!##'######++++1+####",
       "!##'#++#1##+++++####",
       "!!#'####2,########+#",
       "!!#(****3(****,###+#",
       "!!############'#####",
       "!!############(*****",
       "!!!#######!!########",
       "!!!!!!!!!!!!!!#####!",
       "!!!!!!!!!!!!!!!!!!!!",
       "#!!!!!!!!!!!!!!!!!!!",
       "##!!!!!!!##!!!!!!!!!",
       "############!!######",
       "####################",
       "####################",
       "####################",
       "####################",
       "####################",
       "####################",
       "####################",
       "####################",
       "####################",
       "####################",
       "####################",
       "$$$$$$$$$$$$$$$$$$$$",
       "$$$$$$$$$$$$$$$$$$$$",
       "$$$$$$$$$$$$$$$$$$$$",
       "$$$$$$$$+111+1+$$$$$",
       "$$$$$$$1+11+++1$$$$$",
       "$$$$$$$++11++1+$$$$$",
       "$$$$$$$1111+++1$$$$$",
       "$$$$$$$+111111+$$$$$",
       "$$$$$$$+11+11+1$$$$$",
       "$$$$$$$11+11+++$$$$$",
       "$$$$$$$+1++++++$$$$$",
       "$$$$$$$$$$$$$$+1+$$$",
       "$$$$$$$$$$$$$$$+1$$$",
       "$$$$$$$$$$$$$$$$$$$$"}
   acmap={"                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "          !         ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "                    ",
          "            #       ",
          "                    ",
          "                    ",
          "          #         ",
          "                    ",
          "                    ",
          "                    ",
          "                    "}
  itmap={"                    ",
         "                    ",
         "                    ",
         "                    ",
         "     !              ",
         "               !    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "         %          ",
         "                    ",
         "      ! !           ",
         "                  ! ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "'                  '",
         "##'       &      '##",
         "  ######'       '#  ",
         "        #########   ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    ",
         "                    "}
 stmap={"                    ",
        "                    ",
        "                    ",
        "    ###             ",
        "    # #       ###   ",
        "    #$%       # #   ",
        "    ###&####  %$#   ",
        "      #%%%'######   ",
        "      #%&%(,'& 5    ",
        "      #% )  %####   ",
        "      #% %    '%#   ",
        "      #'%%%-%)%'#   ",
        "      #(  +%0  1#   ",
        "      #'%%%.% %'#   ",
        "    #%#%  % %  %#   ",
        "    #%&###'/'%66####",
        "    #$ # ## %%  #%##",
        "    ####  ######&% #",
        "               %%%$#",
        "               #####",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "                    ",
        "!!                !!",
        "!!!!!!!!         !!!",
        "!!!!!!!!!!!!!!!!!!!!",
        "!!!!!!!!!!!!!!!!!!!!",
        "!!!!!!!!!!!!!!!!!!!!",
        "!!!!!!!!!!!!!!!!!!!!",
        "                    ",
        "                    ",
        "       %%%%%%%%%    ",
        "       %      *%    ",
        "      %%      *%    ",
        "      %  )     %    ",
        "      %      ) %    ",
        "      % )      %    ",
        "      %        %    ",
        "      % *   )  %    ",
        "      %%*     *%%%  ",
        "       %%%%%%%* )%  ",
        "             %%)'%  ",
        "              %%%%  "}
create_world_by_map(level)
draw_map(0,0,stmap,stones)
draw_map(0,0,itmap,items)
draw_map(0,0,acmap,actors)

set_item("it-wormhole",14, 8, {targetx="14.5",targety="42.5",strength=0})
set_item("it-wormhole",14,16, {targetx="14.5",targety="48.5",strength=0})
set_item("it-wormhole",14,41, {targetx="16.5",targety="8.5",strength=0})
set_item("it-wormhole",14,49, {targetx="15.5",targety="16.5",strength=0})
set_item("it-wormhole", 8,14, {targetx="8.5",targety="48.5",strength=0})
set_item("it-wormhole", 8,47, {targetx="9.0",targety="14.5",strength=0})

-- SetAttrib(enigma.GetItem(14,8),"strength",0)
-- SetAttrib(enigma.GetItem(14,16),"strength",0)
-- SetAttrib(enigma.GetItem(14,41),"strength",0)
-- SetAttrib(enigma.GetItem(14,49),"strength",0)
-- SetAttrib(enigma.GetItem(8,14),"strength",0)
-- SetAttrib(enigma.GetItem(8,47),"strength",0)
-- Signal ("it(14 8)","fl(14 42)")
-- Signal ("it(14 16)","fl(14 48)")
-- Signal ("it(14 41)","fl(16 8)")
-- Signal ("it(14 49)","fl(15 16)")
-- Signal ("it(8 14)","fl(8 48)")
-- Signal ("it(8 47)","fl(8 14)")

SetAttrib(enigma.GetItem(5,4),"invisible",FALSE)
SetAttrib(enigma.GetItem(6,16),"invisible",FALSE)
SetAttrib(enigma.GetStone(10,12),"init",FALSE)
SetAttrib(enigma.GetItem(10,31),"text","A castle lies before you... beware of guardians!")
SetAttrib(enigma.GetStone(11,11),"init",FALSE)
SetAttrib(enigma.GetStone(11,13),"init",FALSE)
SetAttrib(enigma.GetStone(12,12),"init",FALSE)
SetAttrib(enigma.GetItem(15,5),"invisible",FALSE)
SetAttrib(enigma.GetItem(18,17),"invisible",FALSE)
Signal ("st(13 8)","st(11 11)")
Signal ("st(13 8)","st(12 12)")
Signal ("st(13 8)","st(11 13)")
Signal ("st(13 8)","st(10 12)")
Signal ("st(7 6)","st(11 11)")
Signal ("st(7 6)","st(12 12)")
Signal ("st(7 6)","st(11 13)")
Signal ("st(7 6)","st(10 12)")
Signal ("st(6 15)","st(11 11)")
Signal ("st(6 15)","st(12 12)")
Signal ("st(6 15)","st(11 13)")
Signal ("st(6 15)","st(10 12)")
Signal ("st(16 17)","st(11 11)")
Signal ("st(16 17)","st(12 12)")
Signal ("st(16 17)","st(11 13)")
Signal ("st(16 17)","st(10 12)")
Signal ("it(18 17)","st(16 17)")
Signal ("it(18 17)","st(13 8)")
Signal ("it(6 16)","st(6 15)")
Signal ("it(6 16)","st(16 17)")
Signal ("it(5 4)","st(7 6)")
Signal ("it(5 4)","st(6 15)")
Signal ("it(15 5)","st(7 6)")
Signal ("it(15 5)","st(18 17)")
Signal ("it(8 16)","st(15 8)")
Signal ("st(8 8)","st(11 8)")
Signal ("st(8 8)","st(15 12)")
Signal ("st(8 8)","st(11 15)")
Signal ("st(8 8)","st(7 12)")

if not difficult then
  set_item("it-flagblack",17,9)
end

display.SetFollowMode(display.FOLLOW_SCROLLING)
oxyd_shuffle()

















