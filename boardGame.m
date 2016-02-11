classdef piece %defines the class "piece"
    properties %sets the default properties of "piece"
        xloc=0; 
        yloc=0;
        King=false;
        poss_moves=[];
        myBoard;
        N;
    end
    methods %define the methods of "piece"
        function kingme(a) %function will set the var "King" to true
            obj.King=true; 
        end
        function placed(Board,N,x,y) 
            obj.myBoard=Board;
            obj.N=N;
            obj.xloc=x;
            obj.yloc=y;
        end
        function L=canMovePiece(xf, yf)
            L=false;
            currSpot= obj.myBoard(obj.xloc,obj.yloc);
            if xf<0 || xf>obj.N || yf<0 || yf>obj.N     % If out of bounds
                L= false;
            elseif obj.myBoard(xf,yf)~=0            % If landing on a piece
                L= false;
            elseif (xf-obj.xloc)/(yf-obj.yloc)~=1           % If not jumping diagonally
                L= false;
            elseif mod(xf+yf,2)==0                % If jumping onto wrong sqaure
                L=false;                        % Possibly unnecessary b/c of above
            elseif currSpot==1 && yf-obj.yloc<0
                L=false;
            elseif currSpot==2 && yf-obj.yloc>0
                L=false;
            elseif abs(xf-obj.xloc)>1                 % If jumping a piece
                myNum=(obj.myBoard(int64((xf+obj.xloc)/2), int64((yf+obj.yloc)/2)));
                if myNum==0
                    L=false;
                elseif abs(myNum-currSpot)~=1 && abs(myNum-currSpot)~=3     %Checks to see it is jumping 
                    L=false;                    %Opponents piece
                else
                    L=true;
                end
            else
                L= true;
            end
        end
    end
end

        
