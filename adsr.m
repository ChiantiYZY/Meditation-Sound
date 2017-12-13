function wav = adsr(attack,decay,sustain,release,wavin,t)
%wav = adsr(attack,decay,sustain,release,generator,t)
% Input: range = [0,1]
%   <float> attack: The proportion of Attack  
%   <float> decay: The proportion of Decay
%   <float> sustain: The proportion of Sustain
%   <float> release: The proportion of Release
%   <string> generator: 'sin', 'sawtooth', 'square'
%   <row vector> t: Time sequence
% Return:
%   <row vector> wav: the wave after applying the ADSR envelop

N = length(t);
ta = t(1:floor(attack*N));     % time sequence for Attack
td = t(floor(attack*N)+1:floor((attack+decay)*N));    % time sequence for Decay
tr = t(floor((1-release)*N)+1:end);    % time sequence for Release

wa = wavin(1:floor(attack*N));
wd = wavin(floor(attack*N)+1:floor((attack+decay)*N));
ws = wavin(floor((attack+decay)*N)+1:floor((1-release)*N));
wr = wavin(floor((1-release)*N)+1:end);

ea = (1-10.^(-ta))/(1-10.^(-ta(end)));    % envelope for Attack
ed = (1-sustain)*(exp(-(td-td(end)))-1)/(exp(-(td(1)-td(end)))-1)+sustain;  % envelope for Decay
es = sustain;            % envelope for Sustain
er = sustain*...
    (10.^(sustain-(tr-tr(1))/(tr(end)-tr(1))*sustain)-1)/...
    (10.^sustain-1);    % envelope for Release

wav = [ea.*wa, ed.*wd, es.*ws, er.*wr];

end