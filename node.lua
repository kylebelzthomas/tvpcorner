gl.setup(1920, 1080)

local webview

function node.render()
    gl.clear(0, 0, 0, 1)
    if webview then
        webview:draw(0, 0, WIDTH, HEIGHT)
    end
end

function node.load_html()
    local content = resource.load_file("html/index.html")
    webview = resource.create_webview()
    webview:open(content)
end

util.data_mapper{
    ["reload"] = function()
        node.load_html()
    end
}

node.load_html()
