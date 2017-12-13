BPM = 50;
key = 'B';
fs = 44100;
flag = 1;
song = [9, 1;       % The music sheet can be represented as a n-by-2 matrix
        9.5, 1;     % The first column contains the solfège of each note
        9, 1;     % 0表示低音7, -1表示低音6
        6.5, 1;      % use "-inf" for rest
        5, 1;       % The second column stands for the duration of each note
        6.5,1;
        9, 1;       
        9.5, 1;     %
        16, 1;
        16.5, 1;
        16, 1;
        13.5, 1;
        12, 1;
        13.5, 1;
        16, 1;
        16.5, 1;    %
        11, 1;
        13.5, 1;
        16, 1;
        16.5, 1;
        16, 1;
        13.5, 1;
        18, 1;
        13.5, 1;    %
        16, 1;
        16.5, 1;
        16, 1;
        13.5, 1;
        11, 1;
        13.5, 1;
        16, 1;
        16.5, 1;    %
        16, 1;
        13.5, 1;
        12, 1;
        13.5, 1;
        16, 1;
        16.5, 1;
        16, 1;
        13.5, 1;    %
        11, 1;
        13.5, 1;
        16, 1;
        16.5, 1;
        16, 1;
        13.5, 1;
        18, 1;
        16, 1;  %
        16.5, 4;];   %  
    