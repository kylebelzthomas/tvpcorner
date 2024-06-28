gl.setup(1920, 1080)

local video = util.videoplayer(CONFIG.get("rtsp_url"), {
    raw = true,
    looped = true
})

function node.render()
    video:draw(0, 0, WIDTH, HEIGHT)
end
