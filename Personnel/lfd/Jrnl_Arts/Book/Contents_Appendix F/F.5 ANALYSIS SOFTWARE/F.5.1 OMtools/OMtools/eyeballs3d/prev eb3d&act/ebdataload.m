% ebdataload.m: Called by 'eyeballs3D' to load new data%% Written by: Jonathan Jacobs%             May 2003 - June 2003  (last mod: 06/05/03)%% Files necessary for proper operation:%   'eyeballs3d', 'ebAct3D.m', 'datscale.m', 'd2pt.m'%   'xyplotsettings.m', 'ebdatacheck.m', 'ebdataload.m'%% If you are reading this, you are probably trying to configure% 'eyeballs3d' to enable data loading for your particular setup.% This can be as simple as just calling MATLAB's 'load' function% (or 'load2' -- a GUI-based version of 'load', if it is included) to % read in a workspace, or calling whatever script/function you normally use.% If you are using the 'rd' suite from OMtools (see www.omlab.org), the% function 'dataclr' will clear the data structures from memory, and% 'rd' will read in new data.%% Whatever you use, you must remember that for 'eyeballs3d' to work, it% requires that the data must be composed of up to six equal-length vectors% (lh, lv, lt, rh, rv, rt) that must be declared as global variables before% they are read in.  Additionally, the sampling frequency, 'samp_freq'% must also be a global variable.  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  %  this file (ebdataload) CAN NOT be a function, or the data loaded   %  %  (and much more important -- any supporting variables/structures)   %  % will appear only in the function workspace, not the base workspace. %  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% out with the old...%clear global lh rh lt rt lv rv samp_freq% ... and in with the new % put the commands you use to read data here:%global lh rh lt rt lv rv samp_freq%dataclrdatstat%evalin('base','global2')