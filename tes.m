function varargout = tes(varargin)
% TES MATLAB code for tes.fig
%      TES, by itself, creates a new TES or raises the existing
%      singleton*.
%
%      H = TES returns the handle to a new TES or the handle to
%      the existing singleton*.
%
%      TES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TES.M with the given input arguments.
%
%      TES('Property','Value',...) creates a new TES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tes_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tes_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tes

% Last Modified by GUIDE v2.5 03-Jan-2022 19:19:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tes_OpeningFcn, ...
                   'gui_OutputFcn',  @tes_OutputFcn, ...
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


% --- Executes just before tes is made visible.
function tes_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tes (see VARARGIN)

% Choose default command line output for tes
vol = 2.5;
set(handles.slider12,'value',vol); %load value vol from the slider
handles.output = hObject;         

% Update handles structure
guidata(hObject, handles);   %save your handles struct to the guidata 

% UIWAIT makes tes wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tes_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname]=uigetfile({'*.wav'}, 'File Selector'); %enables a user to select or enter the name of a file.
handles.fullpathname = strcat(pathname, filename);   %concatenates the text in its input arguments
set(handles.address, 'String', handles.fullpathname)  %showing fullpathname
guidata(hObject, handles)                             %save your handles struct to the guidata 


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if  isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
%       See ISPC and COMPUTER.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;  %to play the sound 
global type;  % message for user to choose filter type
type = menu('Type of filter is', 'FIR', 'IIR');
if ( type == 1 ) 
     FIR(hObject, handles) 
elseif ( type == 2 )
    IIR(hObject, handles)
end
play(player);
guidata(hObject, handles)


% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
pause(player);
guidata(hObject, handles)

% --- Executes on button press in resume.
function resume_Callback(hObject, eventdata, handles)
% hObject    handle to resume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
resume(player);
guidata(hObject, handles)


% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
stop(player);
guidata(hObject, handles)


% --- Executes on slider movement.
function slider12_Callback(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%fir function 

function FIR(hObject, handles)
global player;
global yT y1 y2 y3 y4 y5 y6 y7 y8 y9 y10;
global Volume;
[handles.y,handles.Fs] = audioread(handles.fullpathname); %) reads data from the file, and returns sampled data, y, and a sample rate for that data, Fs.
handles.Y=abs(fftshift(fft(handles.y)));     %original signal in freq domain
handles.Volume=get(handles.slider12,'value'); % taking the value of volume from user
%handles.y=handles.y(NewStart:end,:); 
handles.g1=exp(get(handles.slider1,'value')/10); % taking the gain from slider and converting it from db
handles.g2=exp(get(handles.slider2,'value')/10);
handles.g3=exp(get(handles.slider3,'value')/10);
handles.g4=exp(get(handles.slider10,'value')/10);
handles.g5=exp(get(handles.slider4,'value')/10);
handles.g6=exp(get(handles.slider5,'value')/10);
handles.g7=exp(get(handles.slider6,'value')/10);
handles.g8=exp(get(handles.slider7,'value')/10);
handles.g9=exp(get(handles.slider8,'value')/10);
handles.g10=exp(get(handles.slider9,'value')/10);
set(handles.text17, 'String',handles.g1);  % displays the specified value of the slider as integers in the box (displays the current value of the specified slider )
set(handles.text24, 'String',handles.g2);  %( displays the gain of slider(g2) on the text box as integers ) 
set(handles.text25, 'String',handles.g3);
set(handles.text26, 'String',handles.g4);
set(handles.text27, 'String',handles.g5); 
set(handles.text28, 'String',handles.g6);
set(handles.text29, 'String',handles.g7);
set(handles.text30, 'String',handles.g8);
set(handles.text32, 'String',handles.g9);
set(handles.text31, 'String',handles.g10);
fso=str2double(char(get(handles.edit16, 'String'))); %taking the o/p freq from user
% low pass
cut_off=170; %cut off low pass dalama Hz 
orde=16;           %fir This MATLAB function uses a Hamming window to design an nth-order lowpass, bandpass, or multiband FIR filter with linear phase
a=fir1(orde,cut_off/(handles.Fs/2),'low'); %design a 16th-order lowpass filter 
fvtool(a)                  %Filter Visualization is a Tool used to display the magnitude, phase response, group delay, impulse response, step response, pole-zero plot, and coefficients of a filter
y1=handles.g1*filter(a,1,handles.y); %multiply the filter by the amplitude(gain) adjusted from the slider g1 and filter the signal y with coefficients of the lpf
m1=filter(a,1,handles.y);    
x1=abs(fftshift(fft(m1)));   %signal in frequency domain
% %bandpass1
f1=171;
f2=310;
b1=fir1(orde,[f1/(handles.Fs/2) f2/(handles.Fs/2)],'bandpass'); %design a 16th-order bandpass filter (171hz- 310hz)
fvtool(b1)           %Filter Visualization is a Tool used to display the magnitude, phase response, group delay, impulse response, step response, pole-zero plot, and coefficients of a filter
y2=handles.g2*filter(b1,1,handles.y);  %multiply the filter by the amplitude(gain) adjusted from the slider g2 and filter the signal y with coefficients of the bandpass filter
m2=filter(b1,1,handles.y);          %signal after passing through the bandpass filter without taking the adjusted gain in consideration
x2=abs(fftshift(fft(m2)));         %signal in frequency domain
% %bandpass2
f3=311;
f4=600;
b2=fir1(orde,[f3/(handles.Fs/2) f4/(handles.Fs/2)],'bandpass');
fvtool(b2)
y3=handles.g3*filter(b2,1,handles.y);
m3=filter(b2,1,handles.y);
x3=abs(fftshift(fft(m3)))
% %bandpass3
 f5=601;
 f6=1000;
 b3=fir1(orde,[f5/(handles.Fs/2) f6/(handles.Fs/2)],'bandpass');
 fvtool(b3)
 y4=handles.g4*filter(b3,1,handles.y);
 m4=filter(b3,1,handles.y);
 x4=abs(fftshift(fft(m4)));
% %bandpass4
 f7=1001;
 f8=3000;
 b4=fir1(orde,[f7/(handles.Fs/2) f8/(handles.Fs/2)],'bandpass');
 fvtool(b4)
 y5=handles.g5*filter(b4,1,handles.y);
 m5=filter(b4,1,handles.y);
 x5=abs(fftshift(fft(m5)));
% %bandpass5
  f9=3001;
  f10=6000;
  b5=fir1(orde,[f9/(handles.Fs/2) f10/(handles.Fs/2)],'bandpass');
  fvtool(b5)
  y6=handles.g6*filter(b5,1,handles.y);
  m6=filter(b5,1,handles.y);
  x6=abs(fftshift(fft(m6))); 
% %bandpass6
  f11=6001;
  f12=12000;
  b6=fir1(orde,[f11/(handles.Fs/2) f12/(handles.Fs/2)],'bandpass');
  fvtool(b6)
  y7=handles.g7*filter(b6,1,handles.y);
  m7=filter(b6,1,handles.y);
  x7=abs(fftshift(fft(m7)));
% %bandpass7
  f13=12001;
  f14=14000;
  b7=fir1(orde,[f13/(handles.Fs/2) f14/(handles.Fs/2)],'bandpass');
  fvtool(b7)
  y8=handles.g8*filter(b7,1,handles.y);
  m8=filter(b7,1,handles.y);
  x8=abs(fftshift(fft(m8)));
 % %bandpass8
  f15=14001;
  f16=16000;
  b8=fir1(orde,[f15/(handles.Fs/2) f16/(handles.Fs/2)],'bandpass');
  fvtool(b8)
  y9=handles.g9*filter(b8,1,handles.y);
  m9=filter(b8,1,handles.y);
  x9=abs(fftshift(fft(m9)));
 %highpass
cut_off2=16000;
c=fir1(orde,cut_off2/(handles.Fs/2),'high');  %design a 16th-order highpass filter with fc=16khz
fvtool(c)
y10=handles.g10*filter(c,1,handles.y);  %multiply the filter by the amplitude(gain) adjusted from the slider g10 and filter the signal y with coefficients of the highpass filter
m10=filter(c,1,handles.y);       %signal after passing through the highpass filter without taking the adjusted gain in consideration
x10=abs(fftshift(fft(m10)));     %signal in frequency domain
%handles.yT=y1+y2+y3+y4+y5+y6+y7;
 handles.yT=y1+y2+y3+y4+y5+y6+y7+y8+y9+y10;  %get the output signal after passing through all the filters
 handles.YT=abs(fftshift(fft(handles.yT)));   %output signal in frequency domain
player = audioplayer(handles.Volume*handles.yT, handles.Fs); %play the output signal
 subplot(2,2,1);
 plot(handles.y);
 title('original signal in time')  
 subplot(2,2,3);
 plot(handles.Y);
 title('original signal in frequency')
 subplot(2,2,2);
 plot(handles.yT);
 title('composite signal in time')
 subplot(2,2,4);
 plot(handles.YT);
 title('composite signal in freq') 
 figure      % plotting the output signal of each filter in time domain
 subplot(10,1,1); plot(m1) ; title('o/p of lpf');
 subplot(10,1,2); plot(m2) ; title('o/p of BPF1');
 subplot(10,1,3); plot(m3) ; title('o/p of BPF2');
 subplot(10,1,4); plot(m4) ; title('o/p of BPF3');
 subplot(10,1,5); plot(m5) ; title('o/p of BPF4'); 
 subplot(10,1,6); plot(m6) ; title('o/p of BPF5');
 subplot(10,1,7); plot(m7) ; title('o/p of BPF6');
 subplot(10,1,8); plot(m8) ; title('o/p of BPF7');
 subplot(10,1,9); plot(m9) ; title('o/p of BPF8');
 subplot(10,1,10); plot(m10) ; title('o/p of HPF');
 figure        % plotting the output signal of each filter in freq domain
 subplot(10,1,1); plot(x1) ; title('o/p of lpf');
 subplot(10,1,2); plot(x2) ; title('o/p of BPF1');
 subplot(10,1,3); plot(x3) ; title('o/p of BPF2');
 subplot(10,1,4); plot(x4) ; title('o/p of BPF3');
 subplot(10,1,5); plot(x5) ; title('o/p of BPF4'); 
 subplot(10,1,6); plot(x6) ; title('o/p of BPF5');
 subplot(10,1,7); plot(x7) ; title('o/p of BPF6');
 subplot(10,1,8); plot(x8) ; title('o/p of BPF7');
 subplot(10,1,9); plot(x9) ; title('o/p of BPF8');
 subplot(10,1,10); plot(x10) ; title('o/p of HBF'); 
audiowrite('composite_fir.wav',handles.yT,handles.Fs); %save the composite output signal as  .wav file 
 
 guidata(hObject,handles)
%[y, Fs] = audioread(fullpathname);
% = audioplayer(y, Fs);
%play(player);
%play(player);
%save suara;
% --- Executes on button press in double.

                  %IIR Filter
function IIR(hObject, handles)
global player;
global yT y1 y2 y3 y4 y5 y6 y7 y8 y9 y10;
global Volume;
[handles.y,handles.Fs] = audioread(handles.fullpathname); % reads data from the file, and returns sampled data, y, and a sample rate for that data, Fs.
handles.Y=abs(fftshift(fft(handles.y)));     %original signal in freq domain
handles.Volume=get(handles.slider12,'value');  %get the colume value from the slider
%handles.y=handles.y(NewStart:end,:); 
handles.g1=exp(get(handles.slider1,'value')/10); % taking the gain from slider and converting it from db
handles.g2=exp(get(handles.slider2,'value')/10);
handles.g3=exp(get(handles.slider3,'value')/10);
handles.g4=exp(get(handles.slider10,'value')/10);
handles.g5=exp(get(handles.slider4,'value')/10);
handles.g6=exp(get(handles.slider5,'value')/10);
handles.g7=exp(get(handles.slider6,'value')/10);
handles.g8=exp(get(handles.slider7,'value')/10);
handles.g9=exp(get(handles.slider8,'value')/10);
handles.g10=exp(get(handles.slider9,'value')/10);
set(handles.text17, 'String',handles.g1);      % displays the specified value of the slider as integers in the box (displays the current value of the specified slider )    
set(handles.text24, 'String',handles.g2);
set(handles.text25, 'String',handles.g3);
set(handles.text26, 'String',handles.g4);
set(handles.text27, 'String',handles.g5);
set(handles.text28, 'String',handles.g6);
set(handles.text29, 'String',handles.g7);
set(handles.text30, 'String',handles.g8);
set(handles.text32, 'String',handles.g9);
set(handles.text31, 'String',handles.g10);
fso=str2double(char(get(handles.edit16, 'String'))); %taking the o/p freq from user
% low pass
fn=handles.Fs/2; %normalized freq
cut_off=170; %cut off low pass dalama Hz
orde=3;
wn1=170/fn; % normalized w 
[b1,a1]=butter(orde,wn1,'low'); %returns the transfer function coefficients of a 3th-order lowpass digital Butterworth filter with normalized cutoff frequency Wn.
fvtool(b1,a1)   %(impulse,frequency,phase) response, zeros and pols of the filter
y1=handles.g1*filter(b1,a1,handles.y); %multiply the filter by the gain adjusted from the slide g1 and filter the signal y with the coefficients of the lpf filter
m1=filter(b1,a1,handles.y);             %the signal after passing through the filter without taking in consideration the adjusted gain
x1=abs(fftshift(fft(m1)));             %signal in frequency domain
% %bandpass1
f1=171;
f2=310;
wn2=[f1/fn f2/fn];
[b2,a2]=butter(orde,wn2,'bandpass');  %transfer function coefficients of a 3th-order bandpass filter with cutoff frequencies(171,310)
fvtool(b2,a2)
y2=handles.g2*filter(b2,a2,handles.y);  %multiply the filter by the gain adjusted from the slide g1 and filter the signal y with the coefficients of the bandpass filter
m2=filter(b2,a2,handles.y);             %the signal after passing through the filter without taking in consideration the adjusted gain
x2=abs(fftshift(fft(m2)));              %signal in frequency domain
% %bandpass2
f3=311;
f4=600;
wn3=[f3/fn f4/fn];
[b3,a3]=butter(orde,wn3,'bandpass');
fvtool(b3,a3)
y3=handles.g3*filter(b3,a3,handles.y);
m3=filter(b2,a3,handles.y);
x3=abs(fftshift(fft(m3)));
% %bandpass3
f5=601;
f6=1000;
wn4=[f5/fn f6/fn];
[b4,a4]=butter(orde,wn4,'bandpass');
fvtool(b4,a4)
y4=handles.g4*filter(b4,a4,handles.y);
m4=filter(b4,a4,handles.y);
x4=abs(fftshift(fft(m4)));
% %bandpass4
f7=1001;
f8=3000;
wn5=[f7/fn f8/fn];
[b5,a5]=butter(orde,wn5,'bandpass');
fvtool(b5,a5)
y5=handles.g5*filter(b5,a5,handles.y);
m5=filter(b5,a5,handles.y);
x5=abs(fftshift(fft(m5)));
% %bandpass5
f9=3001;
f10=6000;
wn6=[f9/fn f10/fn];
[b6,a6]=butter(orde,wn6,'bandpass');
fvtool(b6,a6)
y6=handles.g6*filter(b6,a6,handles.y);
m6=filter(b6,a6,handles.y);
x6=abs(fftshift(fft(m6)));
% %bandpass6
f11=6001;
f12=12000;
wn7=[f11/fn f12/fn];
[b7,a7]=butter(orde,wn7,'bandpass');
fvtool(b7,a7)
y7=handles.g7*filter(b7,a7,handles.y);
m7=filter(b7,a7,handles.y);
x7=abs(fftshift(fft(m7)));
% %bandpass7
f13=12001;
f14=14000;
wn8=[f13/fn f14/fn];
[b8,a8]=butter(orde,wn8,'bandpass');
fvtool(b8,a8)
y8=handles.g8*filter(b8,a8,handles.y);
m8=filter(b8,a8,handles.y);
x8=abs(fftshift(fft(m8))); 
 % %bandpass8
f15=14001;
f16=16000;
wn9=[f15/fn f16/fn];
[b9,a9]=butter(orde,wn9,'bandpass');
fvtool(b9,a9)
y9=handles.g9*filter(b9,a9,handles.y);
m9=filter(b9,a9,handles.y);
x9=abs(fftshift(fft(m9))); 
 %highpass
cut_off2=16000;
wn10=16000/fn;
[b10,a10]=butter(orde,wn10,'high'); 
fvtool(b10,a10)
y10=handles.g10*filter(b10,a10,handles.y);
m10=filter(b10,a10,handles.y);
x10=abs(fftshift(fft(m10)));
%handles.yT=y1+y2+y3+y4+y5+y6+y7;  
 handles.yT=y1+y2+y3+y4+y5+y6+y7+y8+y9+y10;  %the output signal after passing through all the filters
 handles.YT=abs(fftshift(fft(handles.yT)));  %the signal in frequency domain
player = audioplayer(handles.Volume*handles.yT, handles.Fs);  %play the output signal
 subplot(2,2,1);
 plot(handles.y);
 title('original signal in time')
 subplot(2,2,3);
 plot(handles.Y);
 title('original signal in frequency')
 subplot(2,2,2);
 plot(handles.yT);
 title('composite signal in time')
 subplot(2,2,4);
 plot(handles.YT);
 title('composite signal in freq') 
 figure      % plotting the output signal of each filter in time domain
 subplot(10,1,1); plot(m1) ; title('o/p of lpf');
 subplot(10,1,2); plot(m2) ; title('o/p of BPF1');
 subplot(10,1,3); plot(m3) ; title('o/p of BPF2');
 subplot(10,1,4); plot(m4) ; title('o/p of BPF3');
 subplot(10,1,5); plot(m5) ; title('o/p of BPF4'); 
 subplot(10,1,6); plot(m6) ; title('o/p of BPF5');
 subplot(10,1,7); plot(m7) ; title('o/p of BPF6');
 subplot(10,1,8); plot(m8) ; title('o/p of BPF7');
 subplot(10,1,9); plot(m9) ; title('o/p of BPF8');
 subplot(10,1,10); plot(m10) ; title('o/p of HPF');
 figure        % plotting the output signal of each filter in freq domain
 subplot(10,1,1); plot(x1) ; title('o/p of lpf');
 subplot(10,1,2); plot(x2) ; title('o/p of BPF1');
 subplot(10,1,3); plot(x3) ; title('o/p of BPF2');
 subplot(10,1,4); plot(x4) ; title('o/p of BPF3');
 subplot(10,1,5); plot(x5) ; title('o/p of BPF4'); 
 subplot(10,1,6); plot(x6) ; title('o/p of BPF5');
 subplot(10,1,7); plot(x7) ; title('o/p of BPF6');
 subplot(10,1,8); plot(x8) ; title('o/p of BPF7');
 subplot(10,1,9); plot(x9) ; title('o/p of BPF8');
 subplot(10,1,10); plot(x10) ; title('o/p of HPF');
 
audiowrite('composite_fir.wav',handles.yT,handles.Fs); %save the ouput composite signal  as a .wav file 
 guidata(hObject,handles) 
                        
% --- Executes on button press in double.
function double_Callback(hObject, eventdata, handles)
% hObject    handle to double (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA) 
global fso 
global yT y1 y2 y3 y4 y5 y6 y7 y8 y9 y10;
global Volume player;
fso=str2double(char(get(handles.edit16, 'String'))); %taking the o/p freq from user
fso=2*fso;   %in case of doubling the output sampling rate
handles.Volume=get(handles.slider12,'value');  %get the volume value from the slider
handles.yT=y1+y2+y3+y4+y5+y6+y7+y8+y9+y10;     %the output composite signal in time domain
audiowrite('composite_fir.wav',handles.yT,fso); %save the output composite signal in case of doubling sample rate as a  .wav file
[d n]=audioread('composite_fir.wav');

D=abs(fftshift(fft(d)));         %signal in freq domain
player =audioplayer(handles.Volume *d,n);  %play the signal
play(player)
figure
 subplot(2,1,1);
 plot(d);
 title('signal if o/p sample rate is doubled in time')
 subplot(2,1,2);
 plot(D);
 title('signal if o/p sample rate is doubled in frequency')
 guidata(hObject,handles)


% --- Executes on button press in half.
function half_Callback(hObject, eventdata, handles)
% hObject    handle to half (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fso 
global yT y1 y2 y3 y4 y5 y6 y7 y8 y9 y10;
global Volume player;
fso=str2double(char(get(handles.edit16, 'String'))); %taking the o/p freq from user
fso=fso/2;     %in case of decreasing the sampling rate o half
handles.Volume=get(handles.slider12,'value'); %get the volume value from the slider
handles.yT=y1+y2+y3+y4+y5+y6+y7+y8+y9+y10;   %the output composite signal
audiowrite('composite_fir.wav',handles.yT,fso); %save the composite signal as .wav file
[d n]=audioread('composite_fir.wav');     

D=abs(fftshift(fft(d)));   %signal in freq domain
player =audioplayer(handles.Volume *d,n); %read  the composite signal
play(player)                              %play the composite signal
figure
 subplot(2,1,1);
 plot(d);
 title('signal if o/p sample rate is the half in time')
 subplot(2,1,2);
 plot(D);
 title('signal if o/p sample rate is doubled in frequency')
 guidata(hObject,handles)

% --- Executes on button press in nochange.
function nochange_Callback(hObject, eventdata, handles)
% hObject    handle to nochange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fso 
global yT y1 y2 y3 y4 y5 y6 y7 y8 y9 y10;
global Volume player;
fso=str2double(char(get(handles.edit16, 'String'))); %taking the o/p freq from user
handles.Volume=get(handles.slider12,'value');
handles.yT=y1+y2+y3+y4+y5+y6+y7+y8+y9+y10;
audiowrite('composite_fir.wav',handles.yT,fso); %creating the composite signal .wav file
[d n]=audioread('composite_fir.wav');

D=abs(fftshift(fft(d)));    %signal in freq domain
player =audioplayer(handles.Volume *d,n);  
play(player)
figure
 subplot(2,1,1);
 plot(d);
 title('signal with the entered  o/p sample rate in time')
 subplot(2,1,2);
 plot(D);
 title('signal with the entered  o/p sample rate in frequency')
 guidata(hObject,handles)