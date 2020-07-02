
module DashCytoscape
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.1.1"

include("cyto_cytoscape.jl")

function __init__()
    Dash.register_package(
        Dash.ResourcePkg(
            "dash_cytoscape",
            resources_path,
            version = version,
            [
                Dash.Resource(
    relative_package_path = "dash_cytoscape.min.js",
    external_url = "https://unpkg.com/dash-cytoscape@0.1.1/dash_cytoscape/dash_cytoscape.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
)
            ]
        )
    )
end
end
