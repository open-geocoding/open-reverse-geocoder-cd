module.exports = f => {
    f.id = f.properties.ADM2_PCODE
    const props = {}
    for (const key in f.properties) {
        const newKey = key.toLowerCase()
        props[newKey] = f.properties[key]
    }
    f.properties = props
    f.tippecanoe = {
        minzoom: 0,
        maxzoom: 12,
        layer: 'cd_districts'
    }
    return f
}