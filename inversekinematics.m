function inversekinematics(handles)

    ikcompute = get(handles.ikcompute,'Value');
    ikclear = get(handles.ikclear, 'Value');
    x = str2double(get(handles.ikx,'String'));
    y = str2double(get(handles.iky,'String'));
    z = str2double(get(handles.ikz,'String'));
    alpha = str2double(get(handles.ikalpha,'String'));
    beta = str2double(get(handles.ikbeta,'String'));
    if ikcompute
        %compute the angles
        [error,theta1,theta2,theta3,theta4,theta5]= melfa_invk(x,y,z,alpha,beta);
        if error
            warndlg('This coordinate is out of the robot workspace');
        else
        theta1 = Roundtozero(theta1);
        theta2 = Roundtozero(theta2);
        theta3 = Roundtozero(theta3);
        theta4 = Roundtozero(theta4);
        theta5 = Roundtozero(theta5);
        T = getTMat(x,y,z,alpha,beta);
        set(handles.ikth1,'string',theta1);
        set(handles.ikth2,'string',theta2);
        set(handles.ikth3,'string',theta3);
        set(handles.ikth4,'string',theta4);
        set(handles.ikth5,'string',theta5);
        set(handles.iktm,'Data',T);
        end
        
        %clear
    elseif ikclear
        set(handles.ikth1,'string','0');
        set(handles.ikth2,'string','0');
        set(handles.ikth3,'string','0');
        set(handles.ikth4,'string','0');
        set(handles.ikth5,'string','0');
        set(handles.iktm,'Data','');
        set(handles.ikx,'String','0');
        set(handles.iky,'String','0');
        set(handles.ikz,'String','782');
        set(handles.ikalpha,'String','0');
        set(handles.ikbeta,'String','0');
    end
        
        
        
    

end