% 2/04/16
% Joe Gonzales Section 2
% Boardv1.m
% Generating the board for the game

%% Initial Matrix 
classdef board %creates the class "board"
    properties %sets the properties of "board"
        myBoard=zeros(8,8); %creates an 8x8 array "myBoard" full of zeros
        myPieces=[]; %creates an empty array "myPieces"
    end
    methods %sets the methods of "board"
        function space= getSpace(x,y) %creates the function "getSpace" with arguments x,y corresponding to a position on the baord
            space=obj.myBoard(x,y); %returns the variable space which is the value in (x,y) position on "myBoard"
        end
    end
end


%in "myBoard" the following values correspond to different piece types

%0 is a blank space
%1 is a black regular piece
%2 is a red regular piece
%3 is a black king
%4 is a red king
