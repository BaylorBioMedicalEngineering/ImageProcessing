function R=mark_regions(I,conn)
    [rows,cols]=size(I);
    R=zeros(rows+1,cols+2);
    color_table=1:rows*cols/conn;
    current_color=1;
    I=[0             zeros(1,cols) 0
       zeros(rows,1) I             zeros(rows,1)];
    for row=2:rows+1
        for col=2:cols+1
          if I(row,col)==1
              neighbors=[];
              if R(row,col-1)>0
                neighbors=[neighbors R(row,col-1)];
              end
              if R(row-1,col)>0
                neighbors=[neighbors R(row-1,col)];
              end
              if (R(row-1,col-1)>0) && (conn==8)
                neighbors=[neighbors R(row-1,col-1)];
              end 
              if (R(row-1,col+1)>0) && (conn==8)
                neighbors=[neighbors R(row-1,col+1)];
              end
              if isempty(neighbors)
                  R(row,col)=current_color;
                  current_color=current_color+1;
              else
                  [val,index]=min(neighbors);
                  R(row,col)=val;
                  for neighbor=1:length(neighbors)
                      if neighbor~=index
                          smallest=min(color_table(val),...
                                       color_table(neighbors(neighbor)));
                          color_table(neighbors(neighbor))=smallest;
                      end
                  end
              end
          end
        end
    end
    R=R(2:rows+1,2:cols+1);
    for color=1:length(color_table)
        color_table(color)=color_table(color_table(color));
    end
    color_list=unique(color_table(color_table>1));
    color_list=color_list(color_list<current_color);
    replacement=2;
    for color=color_list
        color_table(color_table==color)=replacement;
        replacement=replacement+1;
    end
    for row=1:rows
		for col=1:cols
            if R(row,col)>0
                R(row,col)=color_table(R(row,col));
            end
        end
    end
end