% src/soundsong.m

function [wav] = soundsong(BPM,key,flag,song,fs)
% soundsong(BPM,key,song,fs)
% Input:
%   <float> BPM: beats per minute
%   <char> key: 
%   <int> flag: -1 is flat(b), 1 is sharp(#)
%   <n-by-2 matrix> song: The music score,
%                         The first column contains the solf¨¨ge of each note
%                         The second column stands for the duration of each note
%                         use "-inf" for rest
%   <float> fs: Sample Rate
% Return:
%   <row vector> wav: the music

fs = 44100      % Sample rate set to 44100
tpb = 60/BPM;   % time per beat (seconds)
wav = [];       % intialize wav
for i = 1:size(song,1)
    t = 0:1/fs:(tpb*song(i,2));     % time sequence
    if song(i,1) == -inf
        wav = [wav, zeros(1,length(t))];
    else
        wav = [wav, sin(2*pi*freqmap(key,song(i,1),flag)*t)];
    end
end

wav = wav/max(wav);     % normalization

sound(wav,fs);

t1 = [t t t t t t t t];
t2 = [t1 t1 t1 t1 t1 t1 t1];
end