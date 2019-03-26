function [A,b]=MakeCT(I,thetaMin,thetaMax,deltaTheta,NperTheta,dist)
    [Ir,Ic]=size(I);
    lenI=Ir*Ic;
    n=(thetaMax-thetaMin)/deltaTheta+1;
    cen_N=(NperTheta+1)/2;
    N=n*NperTheta;
    A=zeros(N,lenI);
    b=zeros(N,1);
    if n>=1
        for angle=0:n-1
            for projection=1:NperTheta
                theta=angle*deltaTheta+thetaMin;
                rad=cen_N-projection;
                Atemp=make_matrix_path(Ir,Ic,theta,rad,dist);
                row=angle*NperTheta+projection;
                A(row,:)=reshape(Atemp,1,lenI);
            end
        end
        b=A*reshape(I,lenI,1);%reshape is column wise
    end
end
    
    