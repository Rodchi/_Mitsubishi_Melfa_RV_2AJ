
function forwardkinematics(handles)

    compute = get(handles.fkcompute,'Value');
    clear = get(handles.fkclear, 'Value');
    theta = str2double(get(handles.fkth1,'String'));
    theta2 = str2double(get(handles.fkth2,'String'));
    theta3 = str2double(get(handles.fkth3,'String'));
    theta4 = str2double(get(handles.fkth4,'String'));
    theta5 = str2double(get(handles.fkth5,'String'));
    
    if (compute)
        
        %Compute the position
        [x,y,z,alpha,beta]= getXYZ(theta,theta2,theta3,theta4,theta5);
        x = Roundtozero(x);
        y = Roundtozero(y);
        z = Roundtozero(z);
        alpha = Roundtozero(alpha);
        beta = Roundtozero(beta);
    
        %Get the Transformation Matrix
        T = getTMat(theta,theta2,theta3,theta4,theta5);
    
        %set parameters
        set(handles.fkx,'String',x);
        set(handles.fky,'String',y);
        set(handles.fkz,'String',z);
        set(handles.fkalpha,'String',alpha);
        set(handles.fkbeta,'String',beta);
        set(handles.fktm,'Data',T);
    elseif (clear)
        set(handles.fkth1,'String','0');
        set(handles.fkth2,'String','0');
        set(handles.fkth3,'String','0');
        set(handles.fkth4,'String','0');
        set(handles.fkth5,'String','0');
        set(handles.fkx,'String','0');
        set(handles.fky,'String','0');
        set(handles.fkz,'String','782');
        set(handles.fkalpha,'String','0');
        set(handles.fkbeta,'String','0');
        set(handles.fktm,'Data','');
    end
        
    
end
