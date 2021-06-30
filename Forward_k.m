function varargout = Forward_k(varargin)
% FORWARD_K MATLAB code for Forward_k.fig
%      FORWARD_K, by itself, creates a new FORWARD_K or raises the existing
%      singleton*.
%
%      H = FORWARD_K returns the handle to a new FORWARD_K or the handle to
%      the existing singleton*.
%
%      FORWARD_K('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORWARD_K.M with the given input arguments.
%
%      FORWARD_K('Property','Value',...) creates a new FORWARD_K or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Forward_k_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Forward_k_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Forward_k

% Last Modified by GUIDE v2.5 10-May-2018 22:58:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Forward_k_OpeningFcn, ...
                   'gui_OutputFcn',  @Forward_k_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Forward_k is made visible.
function Forward_k_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Forward_k (see VARARGIN)

% Choose default command line output for Forward_k
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Forward_k wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Forward_k_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function fkth1_Callback(hObject, eventdata, handles)
% hObject    handle to fkth1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkth1 as text
%        str2double(get(hObject,'String')) returns contents of fkth1 as a double
str=str2double(get(hObject,'String'));
if isempty(str)
    set(hObject,'string','0');
    warndlg('Input must be numerical');
else
    x = str2double(str);
    if x < -150
        set(hObject,'String','-150');
    elseif x > 150
        set(hObject,'String','150');
    end
end
        


% --- Executes during object creation, after setting all properties.
function fkth1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkth1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fkth2_Callback(hObject, eventdata, handles)
% hObject    handle to fkth2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkth2 as text
%        str2double(get(hObject,'String')) returns contents of fkth2 as a double
str=get(hObject,'String');
if isempty(str2double(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
else
    x = str2double(str);
    if x < -60
        set(hObject,'String','-60');
    elseif x > 120
        set(hObject,'String','120');
    end
end


% --- Executes during object creation, after setting all properties.
function fkth2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkth2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fkth3_Callback(hObject, eventdata, handles)
% hObject    handle to fkth3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkth3 as text
%        str2double(get(hObject,'String')) returns contents of fkth3 as a double
str=get(hObject,'String');
if isempty(str2double(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
else
    x = str2double(str);
    if x < -110
        set(hObject,'String','-110');
    elseif x > 120
        set(hObject,'String','120');
    end
end


% --- Executes during object creation, after setting all properties.
function fkth3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkth3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fkth4_Callback(hObject, eventdata, handles)
% hObject    handle to fkth4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkth4 as text
%        str2double(get(hObject,'String')) returns contents of fkth4 as a double
str=get(hObject,'String');
if isempty(str2double(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
else
    x = str2double(str);
    if x < -90
        set(hObject,'String','-90');
    elseif x > 90
        set(hObject,'String','90');
    end
end


% --- Executes during object creation, after setting all properties.
function fkth4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkth4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fkth5_Callback(hObject, eventdata, handles)
% hObject    handle to fkth5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkth5 as text
%        str2double(get(hObject,'String')) returns contents of fkth5 as a double
str=get(hObject,'String');
if isempty(str2double(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
else
    x = str2double(str);
    if x < -200
        set(hObject,'String','-200');
    elseif x > 200
        set(hObject,'String','200');
    end
end


% --- Executes during object creation, after setting all properties.
function fkth5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkth5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fkx_Callback(hObject, eventdata, handles)
% hObject    handle to fkx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkx as text
%        str2double(get(hObject,'String')) returns contents of fkx as a double



% --- Executes during object creation, after setting all properties.
function fkx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fky_Callback(hObject, eventdata, handles)
% hObject    handle to fky (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fky as text
%        str2double(get(hObject,'String')) returns contents of fky as a double


% --- Executes during object creation, after setting all properties.
function fky_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fky (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fkz_Callback(hObject, eventdata, handles)
% hObject    handle to fkz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkz as text
%        str2double(get(hObject,'String')) returns contents of fkz as a double


% --- Executes during object creation, after setting all properties.
function fkz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fkalpha_Callback(hObject, eventdata, handles)
% hObject    handle to fkalpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkalpha as text
%        str2double(get(hObject,'String')) returns contents of fkalpha as a double


% --- Executes during object creation, after setting all properties.
function fkalpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkalpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fkbeta_Callback(hObject, eventdata, handles)
% hObject    handle to fkbeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fkbeta as text
%        str2double(get(hObject,'String')) returns contents of fkbeta as a double


% --- Executes during object creation, after setting all properties.
function fkbeta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fkbeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fkcompute.
function fkcompute_Callback(hObject, eventdata, handles)
% hObject    handle to fkcompute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
forwardkinematics(handles);




% --- Executes on button press in fkclear.
function fkclear_Callback(hObject, eventdata, handles)
% hObject    handle to fkclear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
forwardkinematics(handles);


% --- Executes during object creation, after setting all properties.
function fktm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fktm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
