function newPic=Rot90(pic,r,c)

for row = 1:c
    for col= 1:r
        newPic(row,r+1-col)=pic(col,row);
    end
end

