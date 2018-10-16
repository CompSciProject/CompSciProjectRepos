function [solution_plus_one] = StepExEul(solution, h, func_value);
         solution_plus_one = solution + h*func_value;
end