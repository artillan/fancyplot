function h_lineseries=semilogy(varargin)


%Call the builtin graphic function
h_lineseries=builtin('semilogy', varargin{:});
    
setgraph;


end