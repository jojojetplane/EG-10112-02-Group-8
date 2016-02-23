
clear
clc
clf

N=8; %size of the board
Checkers=board; %creates a new board named "Checkers"

%% Adding pieces to the board

%in "myBoard" the following values correspond to different piece types

%0 is a blank space
%1 is a black regular piece
%2 is a red regular piece
%3 is a black king
%4 is a red king

for x=1:N %iterates from x = 1 to x = N, x = 1 corresponds to the leftmost edge of the board
    for y=1:3 %iterates from y = 1 to y =3 corresponds to the black side of the board (top side)
        if mod(x+y,2)==1 %if x+y%2 is equal to 1
            Checkers.myBoard(x,y)=1; %sets the value of "myBoard" to 1 (black piece)
        end
    end
    for y=6:N %iterates from y = 6 to y = 8 corresponds to the red side of the board (bot side)
        if mod(x+y,2)==1 %if x+y%2 is equal to 1
            Checkers.myBoard(x,y)=2; %sets the value of "myBoard" to 2 (red piece)
        end
    end
end

displayBoard(N,Checkers.myBoard); %displays myBoard in its current state

%% Moving a piece

while ismember(1,Checkers.myBoard) %iterates while there is a 1 stored in "myBoard" (i.e. there is balck piece remaining
    turn=input('Please make your move ','s'); %asks user to make a move reading in a string
    xs= str2num(turn(1)); %the initial x position taken from the first char in the "turn" string (since board is 8x8 the initial xpos will always be just the first char)
    ys= str2num(turn(2)); %the initial y position taken from the second char in the "turn" string
    xf= str2num(turn(3)); %the end x position taken from the third char in the "turn" string
    yf= str2num(turn(4)); %the end y position taken from the fourth char in the "turn" string
    Checkers.myBoard=movepiece(Checkers.myBoard,xs,ys,xf,yf); %moves the piece from the intial position to the end position
    moveMade=false; %sets the variable "moveMade" to false as the player has just completed a move
    for y=N:-1:1 %iterates through the y position starting at 8 and incrimenting by -1 until 1
        for x=1:N %iterates through the x position starting at 1 and incrimenting until 1
            if Checkers.myBoard(x,y)==1 && ~moveMade %if there is a 1 stored in (black piece) in the (x,y) position of "myBoard" and moveMade is false
                for j=N:-1:1 %iterates through j starting at 8 and incirmenting by -1 until 1
                    for i=1:N %iterates through i starting at 8 and incrimenting by 1 until 8
                        if canMovePiece(N,Checkers.myBoard,x,y,i,j) % if the piece in position (x,y) in "myBaord" can move into position (i,j) in "myBoard"
                            Checkers.myBoard=movepiece(Checkers.myBoard,x,y,i,j); %moves the piece that was in the postion (x,y) in 'myBoard" into position (i,j)
                            Checkers.myBoard=displayBoard(N,Checkers.myBoard); %displays the board
                            moveMade=true; %sets "moveMade" to true
                        end
                    end
                end
            end
        end
    end
    
    %the curretn implementation will make the first available, legal move
    
    if ~moveMade %if "moveMade" is false
        disp('I can make no move.'); %display "I can make no move"
    end
end
    











%%%%%% Random moves (both sides are the computer
% while ismember(1, Checkers.myBoard)
%     x=1;
%     y=1;
%     if mod(turn,2)==1
%         while Checkers.myBoard(x,y)~=1
%             x=randi(N);
%             y=randi(N);
%         end
%         for i=1:N
%             for j=1:N
%                 if canMovePiece(N,Checkers.myBoard,x,y,i,j)
%                     Checkers.myBoard=movepiece(Checkers.myBoard,x,y,i,j);
%                     turn=turn+1;
%                     Checkers.myBoard=displayBoard(N,Checkers.myBoard);
%                     pause(1);
%                 end
%             end
%         end
%     else
%        while Checkers.myBoard(x,y)~=2  
%            x=randi(N);
%             y=randi(N);
%         end
%         for i=1:N
%             for j=1:N
%                 if canMovePiece(N,Checkers.myBoard,x,y,i,j)
%                     Checkers.myBoard=movepiece(Checkers.myBoard,x,y,i,j);
%                     turn=turn+1;
%                     Checkers.myBoard=displayBoard(N,Checkers.myBoard);
%                     pause(1);
%                 end
%             end
%         end
%     end
% end
    
    
    
    
    
    
% Checkers.myBoard=movepiece(Checkers.myBoard,2,3,3,4);
% Checkers.myBoard=displayBoard(N,Checkers.myBoard);
% pause(1);
% Checkers.myBoard=movepiece(Checkers.myBoard,1,6,2,5);
% Checkers.myBoard=displayBoard(N,Checkers.myBoard);
% pause(1);
% Checkers.myBoard=movepiece(Checkers.myBoard,3,4,1,6);
% Checkers.myBoard=displayBoard(N,Checkers.myBoard);
% pause(1);
% Checkers.myBoard=movepiece(Checkers.myBoard,1,6,3,8);
% Checkers.myBoard=displayBoard(N,Checkers.myBoard);
% pause(1);
%     
%     
    
    
