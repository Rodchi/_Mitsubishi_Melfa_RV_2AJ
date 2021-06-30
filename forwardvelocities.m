function forwardvelocities(handles)
    fvcompute = get(handles.pushbutton1,'Value');
    fvclear = get(handles.pushbutton2,'Value');
    q1 = str2double(get(handles.qtheta1,'String'));
    q2 = str2double(get(handles.qtheta2,'String'));
    q3 = str2double(get(handles.qtheta2,'String'));
    q4 = str2double(get(handles.qtheta2,'String'));
    q5 = str2double(get(handles.qtheta2,'String'));
    
    q = [q1;q2;q3;q4;q5];
    
    
    if fvcompute
        
        [EEV, J]= VelocityMelfa(q1,q2,q3,q4,q5,q);
        set(handles.Vxtag,'string',EEV(1,1));
        set(handles.Vytag,'string',EEV(2,1));
        set(handles.Vztag,'string',EEV(3,1));
        set(handles.Wxtag,'string',EEV(4,1));
        set(handles.Wytag,'string',EEV(5,1));
        set(handles.Wztag,'string',EEV(6,1));
        set(handles.JacobianTable,'Data',J);
    elseif fvclear
        set(handles.Vxtag,'string','');
        set(handles.Vytag,'string','');
        set(handles.Vztag,'string','');
        set(handles.Wxtag,'string','');
        set(handles.Wytag,'string','');
        set(handles.Wztag,'string','');
        set(handles.JacobianTable,'Data','');
    end
        


end