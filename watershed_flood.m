function R=watershed_flood(I,steps,deriv,conn)
    [rows,cols]=size(I);
    %restrict color level
    if steps>0
        I=round(I.*steps)./steps;
    else
        steps=1000;
    end
    %calculate the first and second derivatives
    if deriv==1
        dx=  [1 0 -1
              2 0 -2
              1 0 -1];
        dy=  [ 1  2  1
               0  0  0
              -1 -2 -1];
        curv=-[1    2  1
               2  -12  2
               1    2  1];
    else
        dx=  [1 0 -1
              1 0 -1
              1 0 -1];
        dy=  [ 1  1  1
               0  0  0
              -1 -1 -1];
        curv=-[1   1  1
               1  -8  1
               1   1  1];
    end
    Dx=????;
    Dy=?????;
    H=???????
    
    %get 1-norm of derivative
    D=abs(Dx)+abs(Dy);
    %find the flat parts but not hilltops
    if conn>4
        conn2=8;
        se=ones(3,3);
    else
        conn2=4;
        se=[0 1 0
            1 1 1
            0 1 0];
    end
    R=mark_regions((D==0)&(H<eps),conn2);
    
    %the next color will be for the dams
    dam=max(max(R))+1;
    
    %flood height and step
    lowest=min(min(I));
    highest=max(max(I));
    step=(highest-lowest)/steps;
%     one=ones(size(I));
    
    for h=(lowest+step):step:highest+step
        cond=true;
        while(cond)
            cond=false;
            Rt=R;
            for row=1:rows
                for col=1:cols
                    if (R(row,col)==0)&(I(row,col)<h)
                        region=0;
                        top=max(row-1,1);
                        bottom=min(row+1,rows);
                        left=max(col-1,1);
                        right=min(col+1,cols);
                        if R(top,col)>0
                            region=R(top,col);
                        end
                        if (R(bottom,col)>0)
                            if (region>0)&(region~=R(bottom,col))
                                region=dam;
                            else 
                                region=R(bottom,col);
                            end
                        end
                        if (R(row,left)>0)
                            if (region>0)&(region~=R(row,left))
                                region=dam;
                            else 
                                region=R(row,left);
                            end
                        end
                        if (R(row,right)>0)
                            if (region>0)&(region~=R(row,right))
                                region=dam;
                            else 
                                region=R(row,right);
                            end
                        end
                        if conn2>4
                            if (R(top,left)>0)
                                if (region>0)&(region~=R(top,left))
                                    region=dam;
                                else 
                                    region=R(top,left);
                                end
                            end
                            if (R(bottom,left)>0)
                                if (region>0)&(region~=R(bottom,left))
                                    region=dam;
                                else 
                                    region=R(bottom,left);
                                end
                            end
                            if (R(top,right)>0)
                                if (region>0)&(region~=R(top,right))
                                    region=dam;
                                else 
                                    region=R(top,right);
                                end
                            end
                            if (R(bottom,right)>0)
                                if (region>0)&(region~=R(bottom,right))
                                    region=dam;
                                else 
                                    region=R(bottom,right);
                                end
                            end
                        end
                        Rt(row,col)=region;
                    end
                end
            end
            cond=(norm(R-Rt)>0);
            R=Rt;
        end
    end
    %renumber Dams to zero
    R(R==dam)=0;
end