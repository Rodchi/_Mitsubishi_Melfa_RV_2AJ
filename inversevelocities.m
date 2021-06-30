function inversevelocities(handles)

    ivcompute = get(handles.ivcompute,'Value');
    ivclear = get(handles.ivclear,'Value');
    vx = str2double(get(handles.Vxtag,'String'));
    vy = str2double(get(handles.Vytag,'String'));
    vz = str2double(get(handles.Vztag,'String'));
    wx = str2double(get(handles.Wxtag,'String'));
    wy = str2double(get(handles.Wytag,'String'));
    wz = str2double(get(handles.Wztag,'String'));
    qdot = [vx;vy;vz;wx;wy;wz];
    
    if ivcompute
        [JointV J] = InverseVelocity(vx,vy,

end