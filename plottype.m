function plottype(plotTypeVal)

if ~(strcmpi(plotTypeVal,'') ||...
        strcmpi(plotTypeVal,'monochrome') ||...
        strcmpi(plotTypeVal,'color') ||...
        strcmpi(plotTypeVal,'cool') ||...
        strcmpi(plotTypeVal,'matlab'))
    error('plotTypeVal undefined')
end

if ispref('fancyplot','plottype')
    setpref('fancyplot','plottype',plotTypeVal)
else
    addpref('fancyplot','plottype',plotTypeVal)
end
end