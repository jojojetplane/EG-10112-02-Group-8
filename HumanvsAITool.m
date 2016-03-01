function varargout = HumanvsAITool(varargin)
% HUMANVSAITOOL MATLAB code for HumanvsAITool.fig
%      HUMANVSAITOOL, by itself, creates a new HUMANVSAITOOL or raises the existing
%      singleton*.
%
%      H = HUMANVSAITOOL returns the handle to a new HUMANVSAITOOL or the handle to
%      the existing singleton*.
%
%      HUMANVSAITOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HUMANVSAITOOL.M with the given input arguments.
%
%      HUMANVSAITOOL('Property','Value',...) creates a new HUMANVSAITOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HumanvsAITool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HumanvsAITool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HumanvsAITool

% Last Modified by GUIDE v2.5 29-Feb-2016 22:04:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HumanvsAITool_OpeningFcn, ...
                   'gui_OutputFcn',  @HumanvsAITool_OutputFcn, ...
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


% --- Executes just before HumanvsAITool is made visible.
function HumanvsAITool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HumanvsAITool (see VARARGIN)

% Choose default command line output for HumanvsAITool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HumanvsAITool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HumanvsAITool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in minimaxButton.
function minimaxButton_Callback(hObject, eventdata, handles)
% hObject    handle to minimaxButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of minimaxButton


% --- Executes on button press in agressiveButton.
function agressiveButton_Callback(hObject, eventdata, handles)
% hObject    handle to agressiveButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of agressiveButton


% --- Executes on button press in conservativeButton.
function conservativeButton_Callback(hObject, eventdata, handles)
% hObject    handle to conservativeButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of conservativeButton


% --- Executes on button press in randomButton.
function randomButton_Callback(hObject, eventdata, handles)
% hObject    handle to randomButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of randomButton


% --- Executes on slider movement.
function difficultySlider_Callback(hObject, eventdata, handles)
% hObject    handle to difficultySlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function difficultySlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to difficultySlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function difficultyText_Callback(hObject, eventdata, handles)
% hObject    handle to difficultyText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of difficultyText as text
%        str2double(get(hObject,'String')) returns contents of difficultyText as a double


% --- Executes during object creation, after setting all properties.
function difficultyText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to difficultyText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in mainMenuButton.
function mainMenuButton_Callback(hObject, eventdata, handles)
% hObject    handle to mainMenuButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in restartButton.
function restartButton_Callback(hObject, eventdata, handles)
% hObject    handle to restartButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
