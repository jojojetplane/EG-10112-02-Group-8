function L = movepiece(myBoard, xs, ys, xf, yf)
    disp(myBoard(2,5));
    myBoard(xf,yf)=myBoard(xs,ys); %puts piece on new space
    myBoard(xs,ys)=0;              %moves piece from old space
    if abs(xf-xs)>1
        myBoard(int64((xf+xs)/2), int64((yf+ys)/2))=0; %jumps piece
    end
    L=myBoard;
end
