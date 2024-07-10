function varargout = img_GUI(varargin)
% IMG_GUI MATLAB code for img_GUI.fig
%      IMG_GUI, by itself, creates a new IMG_GUI or raises the existing
%      singleton*.
%
%      H = IMG_GUI returns the handle to a new IMG_GUI or the handle to
%      the existing singleton*.
%
%      IMG_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMG_GUI.M with the given input arguments.
%
%      IMG_GUI('Property','Value',...) creates a new IMG_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before img_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to img_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help img_GUI

% Last Modified by GUIDE v2.5 25-Dec-2023 22:04:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @img_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @img_GUI_OutputFcn, ...
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


% --- Executes just before img_GUI is made visible.
function img_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to img_GUI (see VARARGIN)

% Choose default command line output for img_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes img_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = img_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in RGB_to_GRAY.
function RGB_to_GRAY_Callback(hObject, eventdata, handles)
global x;
a=RGB_to_GRAY(x);
x=a;
axes(handles.axes2);
imshow(x);



% --- Executes on button press in RGB_to_binary.
function RGB_to_binary_Callback(hObject, eventdata, handles)
global x;
a=RGB_to_binary(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in gray_to_binary.
function gray_to_binary_Callback(hObject, eventdata, handles)
global x;
a=gray_to_binary(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in upload.
function upload_Callback(hObject, eventdata, handles)
global x;
x=uigetfile('*.*');
x=imread(x);
axes(handles.axes1);
imshow(x)

% --- Executes on button press in average.
function average_Callback(hObject, eventdata, handles)
global x;
a=average(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in weighted_average.
function weighted_average_Callback(hObject, eventdata, handles)
global x;
a=weighted_average(x);
x=a;
axes(handles.axes2);
imshow(x);




% --- Executes on button press in min_filter.
function min_filter_Callback(hObject, eventdata, handles)
global x;
a=min_filter(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in max_filter.
function max_filter_Callback(hObject, eventdata, handles)
global x;
a=max_filter(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in median_filter.
function median_filter_Callback(hObject, eventdata, handles)
global x;
a=median_filter(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in midpoint.
function midpoint_Callback(hObject, eventdata, handles)
global x;
a=midpoint(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in brightness.
function brightness_Callback(hObject, eventdata, handles)
global x;
a=brightness(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in negative.
function negative_Callback(hObject, eventdata, handles)
global x;
a=negative(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in inverse_log.
function inverse_log_Callback(hObject, eventdata, handles)
global x;
a=inverse_log(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in pow_func.
function pow_func_Callback(hObject, eventdata, handles)
global x;
a=pow_func(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in root_func.
function root_func_Callback(hObject, eventdata, handles)
global x;
a=root_func(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in log_func.
function log_func_Callback(hObject, eventdata, handles)
global x;
a=log_func(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in Histogram.
function Histogram_Callback(hObject, eventdata, handles)
global x;
a=Histogram(x);
x=a;
axes(handles.axes2);
[h, w, l]=size(x);
if (l==1)
    bar(0:255, x);
    
else
    figure;
    subplot(2, 1, 1), bar(0:255, x(:, 1), 'r'), title('Red Histogram');
    subplot(2, 2, 3), bar(0:255, x(:, 2), 'g'), title('Green Histogram');
    subplot(2, 2, 4), bar(0:255, x(:, 3), 'b'), title('Blue Histogram');
end




% --- Executes on button press in Contrast_stretching.
function Contrast_stretching_Callback(hObject, eventdata, handles)
global x;
a=Contrast_stretching(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Histogram_Equalization.
function Histogram_Equalization_Callback(hObject, eventdata, handles)
global x;
a=Histogram_Equalization(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Ideal_High_pass_filter.
function Ideal_High_pass_filter_Callback(hObject, eventdata, handles)
global x;
a=Ideal_High_pass_filter(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in Butterworth_High_pass_filter.
function Butterworth_High_pass_filter_Callback(hObject, eventdata, handles)
global x;
a=Butterworth_High_pass_filter(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Gaussian_High_pass_filter.
function Gaussian_High_pass_filter_Callback(hObject, eventdata, handles)
global x;
a=Gaussian_High_pass_filter(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Ideal_Low_pass_filter.
function Ideal_Low_pass_filter_Callback(hObject, eventdata, handles)
global x;
a=Ideal_Low_pass_filter(x);
x=a;
axes(handles.axes2);
imshow(x);



% --- Executes on button press in Butterworth_Low_pass_filter.
function Butterworth_Low_pass_filter_Callback(hObject, eventdata, handles)
global x;
a=Butterworth_Low_pass_filter(x);
x=a;
axes(handles.axes2);
imshow(x);



% --- Executes on button press in Gaussian_Low_pass_filter.
function Gaussian_Low_pass_filter_Callback(hObject, eventdata, handles)
global x;
a=Gaussian_Low_pass_filter(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Gaussian_Noise.
function Gaussian_Noise_Callback(hObject, eventdata, handles)
global x;
a=Gaussian_Noise(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Erlang_Noise.
function Erlang_Noise_Callback(hObject, eventdata, handles)
global x;
a=Erlang_Noise(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Exponential_Noise.
function Exponential_Noise_Callback(hObject, eventdata, handles)
global x;
a=Exponential_Noise(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in Rayleigh_Noise.
function Rayleigh_Noise_Callback(hObject, eventdata, handles)
global x;
a=Rayleigh_Noise(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Uniform_Noise.
function Uniform_Noise_Callback(hObject, eventdata, handles)
global x;
a=Uniform_Noise(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in Impulse_Noise.
function Impulse_Noise_Callback(hObject, eventdata, handles)
global x;
a=Impulse_Noise(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in line_detect_vertical.
function line_detect_vertical_Callback(hObject, eventdata, handles)
global x;
a=line_detect_vertical(x);
x=a;
axes(handles.axes2);
imshow(x);
% --- Executes on button press in line_detect_horizintal.
function line_detect_horizintal_Callback(hObject, eventdata, handles)
global x;
a=line_detect_horizintal(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in line_detect_right_di.
function line_detect_right_di_Callback(hObject, eventdata, handles)
global x;
a=line_detect_right_di(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in line_detect_left_di.
function line_detect_left_di_Callback(hObject, eventdata, handles)
global x;
a=line_detect_left_di(x);
x=a;
axes(handles.axes2);
imshow(x);



% --- Executes on button press in line_sharp_vertical.
function line_sharp_vertical_Callback(hObject, eventdata, handles)
global x;
a=line_sharp_vertical(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in line_sharp_horzontal.
function line_sharp_horzontal_Callback(hObject, eventdata, handles)
global x;
a=line_sharp_horzontal(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in line_sharp_dr.
function line_sharp_dr_Callback(hObject, eventdata, handles)
global x;
a=line_sharp_dr(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in line_sharp_dl.
function line_sharp_dl_Callback(hObject, eventdata, handles)
global x;
a=line_sharp_dl(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in PointSharpening.
function PointSharpening_Callback(hObject, eventdata, handles)
global x;
a=PointSharpening(x);
x=a;
axes(handles.axes2);
imshow(x);


% --- Executes on button press in PointDetection.
function PointDetection_Callback(hObject, eventdata, handles)
global x;
a=PointDetection(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in fourier.
function fourier_Callback(hObject, eventdata, handles)
global x;
a=fourier(x);
x=a;
axes(handles.axes2);
imshow(x);

% --- Executes on button press in inverse_fourier.
function inverse_fourier_Callback(hObject, eventdata, handles)
global x;
a=inverse_fourier(x);
x=a;
axes(handles.axes2);
imshow(x);
