function init_code(text)

    code = {
        x = 5 * (-8 * (#code_list+1)),
        y = 0,
        message = text,
        color = flr(rnd(7) + 8)
    }

    if (#code_list+1) % 5 == 1 then
        code.y = 81
    elseif (#code_list+1) % 5 == 3 then
        code.y = 89
    elseif (#code_list+1) % 5 == 2 then
        code.y = 97
    elseif (#code_list+1) % 5 == 4 then
        code.y = 105
    else
        code.y = 113
    end

    add(code_list,code)

end

function update_code()

    for i = 1, #code_list do 
        if code_list[i].x < 130 then
            code_list[i].x += 1
        else
            code_list[i].x = 5 * (-8 * (#code_list-2))
            code_list[i].color = flr(rnd(7) + 8)
            if code_list[i].y < 113 then
                code_list[i].y += 8
            else
                code_list[i].y = 81
            end
        end
    end

end

function draw_code()

    for i = 1, #code_list do
        print(code_list[i].message,code_list[i].x,code_list[i].y,code_list[i].color)
    end

end