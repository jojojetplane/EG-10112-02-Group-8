% 2/23/16
% Group 8
% randomMove.m
% Makes a random move based on the 

function [x1,y1,x2,y2]=randomMove(Board,N)
    rng('shuffle');
    loc={};
    for a=1:N
        for b=1:N
            if Board(a,b)==1 || Board(a,b)==3
                    loc=[loc,[a,b]];
            end
        end
    end
    
    position=cell2mat(loc(randi(length(loc))));
    x1=position(1);
    y1=position(2);
    moves=findMoves(x1,y1, Board, N);
    while length(moves)<1
        position=cell2mat(loc(randi(length(loc))));
        x1=position(1);
        y1=position(2);
        moves=findMoves(x1,y1, Board, N);
    end
    myMove=cell2mat(moves(randi(length(moves))));
    x2=myMove(1);
    y2=myMove(2);
end