function L=canMovePiece(N,myBoard, xs, ys, xf, yf) %determines whether it is possible to move the piece in the starting position (xs,ys) to the final position (xf,yf)
    L=false; %by default the return value of the function is set to false
    piece= myBoard(xs,ys);
    if xf<0 || xf>N || yf<0 || yf>N     % If out of bounds sets the return value of the function to false
        L= false;
    elseif myBoard(xf,yf)~=0            % If landing on a piece sets the rturn value of the function to false
        L= false;
    elseif (xf-xs)/(yf-ys)~=1           % If not jumping diagonally sets the return value of the function to false
        L= false;
    elseif mod(xf+yf,2)==0                % If jumping onto wrong sqaure sets the return value of the function to false
        L=false;                        % Possibly unnecessary b/c of above
    elseif piece==1 && yf-ys<0          % If moving a black piece backwards sets the return value of the function to false
        L=false;
    elseif piece==2 && yf-ys>0          % If moving a black piece backwards sets the return value of the function to false
        L=false;
    elseif abs(xf-xs)>1                 % If jumping a piece
        myNum=(myBoard(int64((xf+xs)/2), int64((yf+ys)/2)));
        if myNum==0                     
            L=false;
        elseif abs(myNum-piece)~=1 && abs(myNum-piece)~=3     %Checks to see it is jumping 
            L=false;                    %Opponents piece
        else
            L=true;
        end
    else
        L= true;
    end
end
