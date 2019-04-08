function [invken]=inverseken(x,y,z,beta,alpha)
% global error
% % global error
% error=0;
% % alpha=deg2rad(alpha);
% % beta=deg2rad(beta);
%     L1=300;
%     L2=250;
%     L3=160;
%     L4=72;
% 
% %     L1 = 0;              %Distancia de la base a eje de muÒeca en eje y
% %     L2 = 0;              %Distancia de la base a eje de muÒeca en eje x
% % 
% %     L1 = z - d*sin((-theta+90) * pi/180) - a;
% %     L2 = sqrt((x)^2 + (y)^2) - d*cos((-theta+90) * pi/180);
%     
%     theta1=atan2(y,x);
% 
%     angHor=-(beta)+(pi/2);
%     a=L4*cos(angHor);
%     b=L4*sin(angHor);
%     r=sqrt(((x)^2)+((y)^2));
%     c=sqrt(((r-a)^2)+((z-(b)-L1)^2));
% 
%     cC=((L2^2)+(L3^2)-(c^2))/(2*L2*L3);
% % if abs(cC) > 1
% %     error = 1;
% %     set(handles.error1,'String',error);
% %     theta1 = 0;
% %     set(handles.theta111,'String',theta1);
% %     theta2 = 0;
% %     set(handles.theta222,'String',theta2);
% %     theta3 = 0;
% %     set(handles.theta333,'String',theta3);
% %     theta5 = 0;
% %     set(handles.theta555,'String',theta5);
% %     theta6 = 0;
% %     set(handles.theta661,'String',theta6);
% %     return;
% % end
% 
% sC=sqrt(1-((cC)^2));
% 
% theta3=pi-(atan2(real(sC),imag(cC)));
% 
% gamma=atan2((z-(b)-L1),(r-a));
% sA=(L3*sC)/c;
% cA=sqrt(1-((sA)^2));
% 
% theta2=(pi/2)-atan2(real(sA),imag(cA))-gamma;
% theta5=beta-theta2-theta3;
% theta6=alpha-(theta1*cos(beta));
% 
% % if(theta1 > 150)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % elseif(theta1 <-150)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % end
% % 
% % if(theta2 > 120)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % elseif(theta2 <-60)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % end
% % 
% % if(theta3 > 120)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % elseif(theta3 <-110)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % end
% % 
% % if(theta5 > 90)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % elseif(theta5 <-90)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % end
% % 
% % if(theta6 > 200)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % elseif(theta6 <-200)
% %     error = 1;
% %      set(handles.error1,'String',error);
% %     return;
% % end
% 
% % theta1=rad2deg(theta1);
% % theta2=rad2deg(theta2);
% % theta3=rad2deg(theta3);
% % theta5=rad2deg(theta5);
% % theta6=rad2deg(theta6);
% 
% invken=[theta1,theta2,theta3,theta5,theta6];
% end

%Medidas de los links
    a = 300; %Cintura en mm
    b = 250; %Hombro en mm
    c = 160; %Codo en mm
    d = 72;  %MuÒeca en mm
    
    %Varibles necesarias 
    L1 = 0;              %Distancia de la base a eje de muÒeca en eje y
    L2 = 0;              %Distancia de la base a eje de muÒeca en eje x

    L1 = z - d*sin((-alpha+90) * pi/180) - a;
    L2 = sqrt((x)^2 + (y)^2) - d*cos((-alpha+90) * pi/180);
    
    theta1 = atan2(y,x)*180/pi;
    theta2 = (atan2(L1,L2)*180/pi) + (acosd((b^2 - c^2 + ((L1)^2 + (L2)^2))/(2*(sqrt((L1)^2 + (L2)^2))*b)));
    theta3 = -(180 - (acosd((b^2 + c^2 - ((L1)^2 + (L2)^2))/(2*c*b))));
    theta5 = (alpha-90)+theta2+theta3;
    
    %Ajustes para similitud con pendant
    theta2 = -theta2+90;
    theta3 = -theta3;
    theta6 = (beta) - (theta1*cosd(alpha));
    invken=[theta1,theta2,theta3,theta5,theta6];
end