function varargout = inverse_k(varargin)
% INVERSE_K MATLAB code for inverse_k.fig
%      INVERSE_K, by itself, creates a new INVERSE_K or raises the existing
%      singleton*.
%
%      H = INVERSE_K returns the handle to a new INVERSE_K or the handle to
%      the existing singleton*.
%
%      INVERSE_K('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVERSE_K.M with the given input arguments.
%
%      INVERSE_K('Property','Value',...) creates a new INVERSE_K or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before inverse_k_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to inverse_k_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help inverse_k

% Last Modified by GUIDE v2.5 10-May-2018 23:02:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @inverse_k_OpeningFcn, ...
                   'gui_OutputFcn',  @inverse_k_OutputFcn, ...
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


% --- Executes just before inverse_k is made visible.
function inverse_k_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to inverse_k (see VARARGIN)

% Choose default command line output for inverse_k
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes inverse_k wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = inverse_k_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ikx_Callback(hObject, eventdata, handles)
% hObject    handle to ikx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikx as text
%        str2double(get(hObject,'String')) returns contents of ikx as a double
str=get(hObject,'String');
if isempty(str2num(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end


% --- Executes during object creation, after setting all properties.
function ikx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iky_Callback(hObject, eventdata, handles)
% hObject    handle to iky (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iky as text
%        str2double(get(hObject,'String')) returns contents of iky as a double
str=get(hObject,'String');
if isempty(str2num(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end


% --- Executes during object creation, after setting all properties.
function iky_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iky (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ikz_Callback(hObject, eventdata, handles)
% hObject    handle to ikz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikz as text
%        str2double(get(hObject,'String')) returns contents of ikz as a double
str=get(hObject,'String');
if isempty(str2num(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end


% --- Executes during object creation, after setting all properties.
function ikz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ikalpha_Callback(hObject, eventdata, handles)
% hObject    handle to ikalpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikalpha as text
%        str2double(get(hObject,'String')) returns contents of ikalpha as a double
str=get(hObject,'String');
if isempty(str2num(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end


% --- Executes during object creation, after setting all properties.
function ikalpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikalpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ikbeta_Callback(hObject, eventdata, handles)
% hObject    handle to ikbeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikbeta as text
%        str2double(get(hObject,'String')) returns contents of ikbeta as a double
str=get(hObject,'String');
if isempty(str2num(str))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end


% --- Executes during object creation, after setting all properties.
function ikbeta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikbeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to ikth1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikth1 as text
%        str2double(get(hObject,'String')) returns contents of ikth1 as a double


% --- Executes during object creation, after setting all properties.
function ikth1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikth1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to ikth2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikth2 as text
%        str2double(get(hObject,'String')) returns contents of ikth2 as a double


% --- Executes during object creation, after setting all properties.
function ikth2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikth2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to ikth3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikth3 as text
%        str2double(get(hObject,'String')) returns contents of ikth3 as a double


% --- Executes during object creation, after setting all properties.
function ikth3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikth3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to ikth4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikth4 as text
%        str2double(get(hObject,'String')) returns contents of ikth4 as a double


% --- Executes during object creation, after setting all properties.
function ikth4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikth4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to ikth5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ikth5 as text
%        str2double(get(hObject,'String')) returns contents of ikth5 as a double


% --- Executes during object creation, after setting all properties.
function ikth5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ikth5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ikcompute.
function ikcompute_Callback(hObject, eventdata, handles)
% hObject    handle to ikcompute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inversekinematics(handles);



% --- Executes on button press in ikclear.
function ikclear_Callback(hObject, eventdata, handles)
% hObject    handle to ikclear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inversekinematics(handles);



% --------------------------------------------------------------------
function uitable2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
