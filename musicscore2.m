BPM = 50;
key = 'B';
flag = 1;
song = [2.5, 8;       % The music sheet can be represented as a n-by-2 matrix
        4, 8;     % The first column contains the solfège of each note
        6.5, 8;       % 0表示低音7, -1表示低音6
        5, 8;      % use "-inf" for rest
        2.5, 8;       % The second column stands for the duration of each note
        4, 8;
        13.4,4];