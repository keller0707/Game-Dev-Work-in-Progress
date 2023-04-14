-- check collision 
function checkcollision(obj,aim,flag)
    --obj = table needs x,y,w,h
    --aim = left,right,up,down, hover
    
    local x=obj.x  
    local y=obj.y
    local w=obj.w  
    local h=obj.h

    local x1=0	 
    local y1=0
    local x2=0  
    local y2=0

    if aim == "left" then
        x1=x + 3
        y1=y + (h/2)
        x2=x + 3   
        y2=y+h-1

    elseif aim=="right" then
        x1=x+w-4    
        y1=y + (h/2)
        x2=x+w-4 
        y2=y+h-1

    elseif aim=="up" then
    x1=x+4    
    y1=y
    x2=x+w-5  
    y2=y
     
    elseif aim=="down" then
        x1=x + 4    
        y1=y+h
        x2=x+w - 5    
        y2=y+h

    elseif aim=="hover" then
        
    else
        return false
    end

  xr1 = x1
  xr2 = x2
  yr1 = y1
  yr2 = y2
   
  --pixels to tiles
  x1/=8    
  y1/=8
  x2/=8    
  y2/=8
   
  if fget(mget(x1,y1), flag)
  or fget(mget(x1,y2), flag)
  or fget(mget(x2,y1), flag)
  or fget(mget(x2,y2), flag) then
    return true
  else
    return false
  end
end