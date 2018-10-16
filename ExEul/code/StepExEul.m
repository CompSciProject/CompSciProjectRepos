function [solution_plus_one] = iterate_by_one(solution, h, func_value);
         solution_plus_one = solution + h*func_value;
end