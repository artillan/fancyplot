function h_lineseries=plot(varargin)


%Call the builtin graphic function
h_lineseries=builtin('plot', varargin{:});
    
%There is a character tring that defines the line style

setgraph;


end