function B=hist_reg_diff(A,num_of_bins,radius)
    % B=hist_reg_diff(A,num_of_bins,radius)
    %     finds regions of interest based on histograms
    [A_rows,A_cols]=size(A);
    
    
    %global histogram, scaled to be approximately a pdf
    A_hist=;
    
    % local histograms
    B=zeros(A_rows,A_cols);
    region_size=     ;
    region=     ;
    for row=radius+1:A_rows-radius
        for col=radius+1:A_cols-radius
            B(row,col)=;
        end
    end
    
end