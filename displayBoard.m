function Q = displayBoard(N,myBoard)
    disp('-------------------');
    for y=1:N
        str =[num2str(y),'|'];
        for x=1:N
            if y==1
                if myBoard(x,y)==2
                    myBoard(x,y)=4;
                end
            end
            if y==N
                if myBoard(x,y)==1
                    myBoard(x,y)=3;
                end
            end
            if myBoard(x,y)==1
                str=[str,' b'];
            elseif myBoard(x,y)==2
                str=[str,' r'];
            elseif myBoard(x,y)==3
                str=[str,' B'];
            elseif myBoard(x,y)==4
                str=[str,' R'];
            else
                if mod(x+y,2)==0
                    str=[str, ' X'];
                else
                    str=[str, ' _'];
                end
            end
        end
        str=[str, ' |'];
        disp(str);
    end
    disp(' -------------------');
    disp(' | 1 2 3 4 5 6 7 8 |');
    Q=myBoard;
end
