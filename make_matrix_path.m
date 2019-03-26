function Path=make_matrix_path(rows,cols,theta,rad,dist)
    Path=zeros(rows,cols);
    row_cen=(rows)/2;
    col_cen=(cols)/2;
    cosTheta=cos(theta);
    sinTheta=sin(theta);
    range=.5+dist/2;
    if abs(sinTheta)>abs(cosTheta)
        for row=1:rows
            y=(row_cen-row);
            x=(y*cosTheta-rad)/sinTheta;
            col=x+col_cen;
            colup=floor(col+range);
            coldown=ceil(col-range);
            if coldown>0 && coldown<cols+1
                Path(row,coldown)=1;
            end
            if colup>coldown  && colup>0 && colup<cols+1
                Path(row,colup)=1;
            end
        end
    else
        for col=1:cols
            x=(col-col_cen);
            y=(x*sinTheta+rad)/cosTheta;
            row=row_cen-y;
            rowup=floor(row+range);
            rowdown=ceil(row-range);
            if rowdown>0 && rowdown<rows+1
                Path(rowdown,col)=1;
            end
            if rowup>rowdown && rowup>0 && rowup<rows+1
                Path(rowup,col)=1;
            end
        end
    end
end