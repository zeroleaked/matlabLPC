function y = analysis_synthesis(x)

    % mengatur frameLength, overlapFactor, dan order
    frameLength = 80;
    overlapFactor = 0;
    order = 20;

    % Menghitung jumlah frame
    numFrames = ceil(length(x)/(frameLength*(1-overlapFactor)));

    % Inisiasi matrix untuk menyimpan koefisien LPC untuk setiap frame
    lpcCoeffs = zeros(numFrames, order+1);

    % Inisiasi array error
    errorSignalNew = zeros(numFrames, frameLength);

    % Menganalisis masing-masing frame
    for i = 1:numFrames
        % Mengekstrak sampel suara pada frame sekarang
        startIdx = round((i-1)*frameLength*(1-overlapFactor))+1;
        endIdx = startIdx + frameLength - 1;
        if endIdx > length(x)
            endIdx = length(x);
            startIdx = endIdx - frameLength + 1;
        end

        currentFrame = x(startIdx:endIdx);
        % Mencari koefisien LPC untuk frame yang sedang dianalisis
        [lpcCoeffs(i,:)] = lpc_autocorr(currentFrame);

        % Mencari nilai error untuk masing-masing frame
        frameError = my_filter(lpcCoeffs(i,:), 1, currentFrame');
        errorSignalNew(i,:) = transpose(frameError);
    end

    reconstructedSignalNew = zeros(numFrames, frameLength);

    % Melakukan inversi filter untuk mendapatkan sinyal suara yang telah direkonstruksi
    for i = 1:numFrames
        % reconstructedSignalNew(i,:) = filter(1, lpcCoeffs(i,:), errorSignalNew(i,:));
        reconstructedSignalNew(i,:) = my_filter(1, lpcCoeffs(i,:), errorSignalNew(i,:));
    end
    k=1;
    y = zeros(numFrames*frameLength,1);
    for i = 1:numFrames
        for j = 1:frameLength
            y(k) = reconstructedSignalNew(i,j);
            k=k+1;
        end
    end

end