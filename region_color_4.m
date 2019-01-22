function V=region_color_4(A)
    [m,n]=size(A);
    color_table=1:m*n;
    current_color=2;
    V=A;
    %handle first row
    if V(1,1)==1
        V(1,1)=current_color;
        current_color=current_color+1;
    end
    for col=2:n
        if V(1,col)==1
            if V(1,col-1)==0
                %
            elseif V(1,col-1)>0
                %
            else
                %do nothing
            end
        end
    end
    for row=2:m
        if V(row,1)==1
            if V(row-1,1)==0
                %;
            elseif V(row-1,1)>0
                %
            else
                %do nothing
            end
        end
        for col=2:n
            if V(row,col)==1
                if (V(row-1,col)==0)&&(V(row,col-1)==0)
                    %
                elseif (V(row-1,col)>0)&&(V(row,col-1)==0)
                    %
                elseif (V(row-1,col)==0)&&(V(row,col-1)>0)
                    %
                elseif  (V(row-1,col)>0)&&(V(row,col-1)>0)
                    %
                else
                    %do nothing
                end
            end
        end
    end
    for row=1:m
        for col=1:n
            if V(row,col)>0
                V(row,col)=color_table(color_table(V(row,col)));
            end
        end
    end
    V=mat2gray(V);
end